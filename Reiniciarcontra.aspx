<%@ Page Language="VB" MasterPageFile="~/mpInterna.master" AutoEventWireup="false" CodeFile="Reiniciarcontra.aspx.vb" Inherits="Reiniciarcontra" title="Solicitar reinicio de contrase�a" StylesheetTheme="skin" Culture="es-MX"%>
<asp:Content ID="cnt" ContentPlaceHolderID="cphPrincipalInterna" Runat="Server">
    <asp:MultiView ID="mviwReiniciarContra" runat="server">
        <asp:View ID="viewSolicitarReinicio" runat="server">
  <table width="100%" class="tablaComun">
  <tr>
    <td valign="top"><table align="center" width="80%" border="0" cellpadding="3" cellspacing="0">
        <tr>
            <td colspan="2"><asp:SiteMapPath ID="smpContactanosSup" runat="server">
                        </asp:SiteMapPath>

            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                El procedimiento para restaurar su contrase�a requiere que le enviemos a su correo
                electr�nico la confirmaci�n de su solicitud. Este correo electr�nico debe estar
                registrado en el sistema para poder hacer el env�o de la confirmaci�n.</td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr style="color: #000000">
            <td style="width: 30%">
                Correo electr�nico</td>
            <td colspan="2" style="width: 70%">
                <asp:TextBox ID="txtEmail" runat="server" MaxLength="100" Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail"
                    ErrorMessage="Correo electr�nico es requerido" ToolTip="Correo electr�nico es requerido">x</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail"
                    ErrorMessage="Correo electr�nico no tiene formato correcto" ToolTip="Correo electr�nico no tiene formato correcto" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">x</asp:RegularExpressionValidator>
                <asp:CustomValidator ID="cmvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Correo electr�nico no v�lido">x</asp:CustomValidator></td>
        </tr>
        <tr>
            <td style="width: 30%;">
                &nbsp;</td>
            <td colspan="2" style="width: 70%;">
                <asp:ValidationSummary ID="vsReiniciarContra" runat="server" Height="15px" Width="300px" />
                </td>
        </tr>
        <tr>
            <td style="width: 30%">
            </td>
            <td colspan="2" style="width: 70%">
                &nbsp;<asp:ImageButton ID="ibtnEnviar" runat="server" ImageUrl="~/images/aplicacion/btnEnviar.gif"
                    PostBackUrl="~/Reiniciarcontra.aspx" /></td>
        </tr>
    </table>
    </td>
  </tr>  
  </table>
        </asp:View>
        <asp:View ID="viewSolicitudRecibida" runat="server">
  <table width="100%" class="tablaComun">
  <tr>
    <td valign="top">
        <table align="center" width="80%" border="0" cellpadding="3" cellspacing="0">
            <tr>
                <td><asp:SiteMapPath ID="smpEnviado" runat="server">
                </asp:SiteMapPath>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
        <tr><td>            Se ha enviado un correo electr�nico a su buz�n indicando el procedimiento a seguir
            para reiniciar su contrase�a.<br />
            <br />
                Es importante que revise la bandeja de correo no deseado pues el remitente puede
                no estar en su lista de contactos seguros.</td></tr>
        </table>
        </td></tr></table>
                </asp:View>
    </asp:MultiView>

</asp:Content>

