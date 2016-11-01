Imports Microsoft.VisualBasic
Imports System.Security.Cryptography
Imports System.Web.Security
Imports System

Public Class clsSaltedHashing

    Private Const intTamSalt As Integer = 15

    Private strOriginal As String = String.Empty
    Private strSalt As String = String.Empty
    Private bytSalt(intTamSalt) As Byte
    Private strHashed As String = String.Empty

    Public Sub New()
        MyBase.New()
    End Sub

    Public Property Salt() As String
        Get
            Return strSalt
        End Get
        Set(ByVal value As String)
            strSalt = value
        End Set
    End Property

    Public WriteOnly Property Original() As String
        Set(ByVal value As String)
            strOriginal = value
        End Set
    End Property

    Public ReadOnly Property Hashed() As String
        Get
            Return Hashed_String()
        End Get
    End Property

    Protected Function Hashed_String() As String
        If strSalt = String.Empty Then
            Dim rngCryptoPrvdr As New RNGCryptoServiceProvider()
            rngCryptoPrvdr.GetBytes(bytSalt)
            strSalt = Convert.ToBase64String(bytSalt)
        End If
        Hashed_String = FormsAuthentication.HashPasswordForStoringInConfigFile(strSalt & strOriginal, "SHA1")
        'Hashed_String = Decrypt(strOriginal, "SHA1")
    End Function

    Public Function Decrypt(input As String, key As String) As String

        Dim inputArray As Byte() = Convert.FromBase64String(input)
        Dim tripleDES As New TripleDESCryptoServiceProvider()
        Dim MD5 As New MD5CryptoServiceProvider()
        tripleDES.Key = MD5.ComputeHash(ASCIIEncoding.ASCII.GetBytes(key))
        'tripleDES.Key = UTF8Encoding.UTF8.GetBytes(key);
        tripleDES.Mode = CipherMode.ECB
        tripleDES.Padding = PaddingMode.PKCS7
        Dim cTransform As ICryptoTransform = tripleDES.CreateDecryptor()
        'Dim resultArray As Byte() = cTransform.TransformFinalBlock(inputArray, 0, inputArray.Length )

        Dim font As Integer = 0
        Dim ooo As String
       
        Dim sha As New SHA256Managed()
        Dim offset As Integer = 0

        While inputArray.Length - offset >= 30

            offset += sha.TransformBlock(inputArray, offset, 30, inputArray, offset)

        End While
        Dim resultArray As Byte() = cTransform.TransformFinalBlock(inputArray, 0, inputArray.Length - 1)

        'sha.TransformFinalBlock(input, offset, input.Length - offset)
        'Console.WriteLine("MultiBlock {0:00}: {1}", size, BytesToStr(sha.Hash))

        'For a As Integer = 1 To inputArray.Length
        '    ooo = inputArray(a)
        '    resultArray = cTransform.TransformFinalBlock(inputArray, 0, ooo.Length)
        'Next
        tripleDES.Clear()
        Return UTF8Encoding.UTF8.GetString(resultArray)
    End Function

End Class
