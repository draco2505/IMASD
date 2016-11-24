Imports Microsoft.Reporting.WebForms
Imports System.Configuration
Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Data
Imports System.Data.SqlClient


Partial Class Reportes_2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            If (Session(System.Web.Configuration.WebConfigurationManager.AppSettings("SesionCampoUsuario").ToString) IsNot Nothing) Then
                Select Case CInt(Session(System.Web.Configuration.WebConfigurationManager.AppSettings("SesionCampoNivel").ToString))
                    Case clsAuthentication.AuthorizationLevelList.Administering
                        Exit Select
                    Case clsAuthentication.AuthorizationLevelList.Financial
                        Server.Transfer("~/Inicio.aspx", False)
                    Case clsAuthentication.AuthorizationLevelList.LimitedUpdating
                        Server.Transfer("~/Inicio.aspx", False)
                    Case clsAuthentication.AuthorizationLevelList.Consulting
                        Server.Transfer("~/Inicio.aspx", False)
                    Case Else
                        Server.Transfer("~/Inicio.aspx", False)
                End Select
            Else
                Server.Transfer("~/Inicio.aspx", False)
            End If
        End If

        
    End Sub

    Private Sub BindReport(ByVal indexreport As Integer)


    End Sub

End Class
