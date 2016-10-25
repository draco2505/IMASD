<%@ Page Language="VB" MasterPageFile="~/mpInterna.master" AutoEventWireup="false" CodeFile="Desuscribir.aspx.vb" Inherits="Desuscribir" title="Eliminar usuario" Theme="skin" %>
<asp:Content ID="cntDesuscribir" ContentPlaceHolderID="cphPrincipalInterna" Runat="Server">
    <asp:MultiView ID="mviwDesuscribir" runat="server">
        <asp:View ID="viewDesuscribir" runat="server">
            <table style="width: 100%" class="tablaComun">
                <tr>
                    <td colspan="2">
                        <asp:SiteMapPath ID="SiteMapPath1" runat="server">
                        </asp:SiteMapPath>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">
                        Esta acci�n eliminar� definitivamente su usuario de la aplicaci�n, si posteriormente
                        desea ingresar a la aplicaci�n deber� registrarse nuevamente.</td>
                </tr>
                <tr>
                    <td colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 25%">
                        Correo electr�nico</td>
                    <td style="width: 75%">
                        <asp:TextBox ID="txtEmail" runat="server" MaxLength="100" Width="300px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEmailDesuscribir" runat="server" ErrorMessage="Correo electr�nico es requerido"
                            ToolTip="Correo electr�nico es requerido" ControlToValidate="txtEmail" ForeColor="">x</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revEmailDesuscribir" runat="server" ErrorMessage="El dato proporcionado no es un correo electr�nico"
                            ToolTip="El dato proporcionado no es un correo electr�nico" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmail" ForeColor="">x</asp:RegularExpressionValidator>
                        <asp:CustomValidator ID="cmvEmailDesuscribir" runat="server" ErrorMessage="No fue posible eliminar su usuario intente mas tarde"
                            ToolTip="No fue posible eliminar su usuario intente mas tarde" ControlToValidate="txtEmail" ForeColor="">x</asp:CustomValidator></td>
                </tr>
                <tr>
                    <td style="width: 25%">
                        &nbsp;</td>
                    <td style="width: 75%">
                        &nbsp;<asp:ValidationSummary ID="vsEliminarUsuario" runat="server" DisplayMode="List" ForeColor="" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 25%">
                    </td>
                    <td style="width: 75%">
                        &nbsp;<asp:ImageButton ID="imgbEliminarUsuario" runat="server" ImageUrl="~/images/aplicacion/btnEliminarUsuario.gif" /></td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="viewDesuscrito" runat="server">
            <table class="tablaComun">
                <tr>
                    <td>
                        <asp:SiteMapPath ID="SiteMapPath2" runat="server">
                        </asp:SiteMapPath>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>Su usuario ha sido removido de nuestras bases de datos. Agradecemos su inter�s en
            los servicios que proporciona la Comisi�n Nacional Forestal.</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            </asp:View>
    </asp:MultiView>
</asp:Content>

