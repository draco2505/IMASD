'Clase para enviar un correo electr�nico
'Creada por: Ing. Roberto Torres Ram�rez
'Fecha de creaci�n: 15 de Junio de 2007
'Permitido su uso libre siempre y cuando se dejen las referencias al creador de la misma
'
'
'---------------------------------------------------------------------------------------
'Secci�n de aportaciones
'---------------------------------------------------------------------------------------
'�ltima modificaci�n:
'
Imports Microsoft.VisualBasic
Imports System.Net
Imports System.Configuration
Imports System

Public Class clsEnviarCorreo
    Private mmCorreo As System.Net.Mail.MailMessage
    Private smtpCliente As System.Net.Mail.SmtpClient
    Private credIdentificacion As System.Net.NetworkCredential
    Private strRemitente As String = String.Empty
    Private strDestinatarios As Mail.MailAddressCollection
    Private strAsunto As String = String.Empty
    Private strCuerpo As String = String.Empty
    Private strServidorSMTP As String = String.Empty
    Private strDominio As String = String.Empty
    Private strUsuario As String = String.Empty
    Private strContrasenia As String = String.Empty
    Private bolFormatoHTML As Boolean = True
    Private strEncabezadoCorreo As String = String.Empty
    Private strPieCorreo As String = String.Empty
    Private strDesuscribir As String = String.Empty
    Private strPortSMTP As String = "25"

    Public Sub New()
        MyBase.New()
    End Sub

    Public Sub New(ByVal destinatarios As String, ByVal remitente As String, _
        ByVal asunto As String, ByVal cuerpo As String, ByVal servidorSMTP As String, _
        ByVal dominio As String, ByVal usuario As String, ByVal contrasenia As String)

        MyBase.New()
        strRemitente = remitente
        If (strDestinatarios Is Nothing) Then
            strDestinatarios = New Mail.MailAddressCollection()
        End If
        strDestinatarios.Clear()
        For Each temp As String In Split(destinatarios, ";")
            strDestinatarios.Add(temp)
        Next
        strAsunto = asunto
        strCuerpo = cuerpo
        strServidorSMTP = servidorSMTP
        strDominio = dominio
        strUsuario = usuario
        strContrasenia = contrasenia
    End Sub

    Public Property remitente() As String
        Get
            Return strRemitente
        End Get
        Set(ByVal value As String)
            strRemitente = value
        End Set
    End Property

    Public Property destinatarios() As String
        Get
            Return strDestinatarios.ToString
        End Get
        Set(ByVal value As String)
            If (strDestinatarios Is Nothing) Then
                strDestinatarios = New Mail.MailAddressCollection()
            End If
            strDestinatarios.Clear()
            For Each temp As String In Split(value, ";")
                strDestinatarios.Add(temp)
            Next
        End Set
    End Property

    Public Property asunto() As String
        Get
            Return strAsunto
        End Get
        Set(ByVal value As String)
            strAsunto = value
        End Set
    End Property

    Public Property Cuerpo() As String
        Get
            Return strCuerpo
        End Get
        Set(ByVal value As String)
            strCuerpo = value
        End Set
    End Property

    Public Property FormatoHTML() As Boolean
        Get
            Return bolFormatoHTML
        End Get
        Set(ByVal value As Boolean)
            bolFormatoHTML = value
        End Set
    End Property

    Public Property TextoDesuscribir() As String
        Get
            Return strDesuscribir
        End Get
        Set(ByVal value As String)
            strDesuscribir = value
        End Set
    End Property

    Public WriteOnly Property ServidorSMTP() As String
        Set(ByVal value As String)
            strServidorSMTP = value
        End Set
    End Property
    Public WriteOnly Property PortSMTP() As String
        Set(ByVal value As String)
            strPortSMTP = value
        End Set
    End Property

    Public WriteOnly Property Dominio() As String
        Set(ByVal value As String)
            strDominio = value
        End Set
    End Property

    Public WriteOnly Property usuario() As String
        Set(ByVal value As String)
            strUsuario = value
        End Set
    End Property

    Public WriteOnly Property contrasenia() As String
        Set(ByVal value As String)
            strContrasenia = value
        End Set
    End Property

    Protected Sub ConfigurarSMTP()
        smtpCliente = New Mail.SmtpClient(strServidorSMTP, strPortSMTP)
        If (strUsuario.Length > 0) Then
            smtpCliente.Credentials = credIdentificacion
        End If
    End Sub

    Protected Sub ConfigurarMail()
        strEncabezadoCorreo = "<html><head><style type=""text/css""><!--a {font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10pt;}" & _
            "td {font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10pt;}--></style></head><body><table width=""75%""><tr><td>"
        strPieCorreo = "</td></tr><tr><td><hr>" & strDesuscribir & "</td></tr></table></body></html>"
        'Cechar la exepcion del correo de developer
        Dim bMailsToDeveloper As Boolean
        Dim strMailDeveloper As String
        Try
            bMailsToDeveloper = Convert.ToBoolean(System.Web.Configuration.WebConfigurationManager.AppSettings("EnviarTodosMailsToDeveloper"))
            strMailDeveloper = System.Web.Configuration.WebConfigurationManager.AppSettings("CorreoDeveloper").ToString
        Catch ex As Exception
            bMailsToDeveloper = False
            strMailDeveloper = String.Empty
        End Try
        If (bMailsToDeveloper) Then
            mmCorreo = New Mail.MailMessage(strRemitente, strMailDeveloper, strAsunto, strEncabezadoCorreo & strCuerpo & strPieCorreo)
        Else
            mmCorreo = New Mail.MailMessage(strRemitente, strDestinatarios.ToString(), strAsunto, strEncabezadoCorreo & strCuerpo & strPieCorreo)
        End If
        mmCorreo.IsBodyHtml = bolFormatoHTML
    End Sub

    Protected Sub ConfigurarCredenciales()
        If (strUsuario.Length > 0) Then
            credIdentificacion = New NetworkCredential(strUsuario, strContrasenia, strDominio)
        End If
    End Sub

    Public Sub EnviarCorreo()
        If strDestinatarios.Count = 0 Then
            Throw New Exception("No hay destinatarios a quien enviar el correo")
        End If
        If strRemitente = String.Empty Then
            Throw New Exception("No especific� quien enviar� el correo")
        End If
        If strServidorSMTP = String.Empty Then
            Throw New Exception("No especific� servidor de correo electr�nico")
        End If
        'If strUsuario = String.Empty Then
        '    Throw New Exception("No especific� usuario del dominio")
        'End If
        'If strDominio = String.Empty Then
        '    Throw New Exception("No especific� servidor de dominio")
        'End If
        'If strUsuario = String.Empty Then
        '    Throw New Exception("No especific� contrase�a del usuario")
        'End If
        ConfigurarMail()
        ConfigurarCredenciales()
        ConfigurarSMTP()
        smtpCliente.Send(mmCorreo)
    End Sub
End Class
