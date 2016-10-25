<%@ Page Language="VB" MasterPageFile="~/mpInterna.master" AutoEventWireup="false" CodeFile="Registro.aspx.vb" Inherits="Registro" title="Registro de usuarios" Culture="es-MX" %>
<asp:Content ID="cntRegistro" ContentPlaceHolderID="cphPrincipalInterna" Runat="Server">
  <table width="100%" class="tablaComun">
  <tr>
    <td valign="top">
        <asp:MultiView ID="mviewRegistro" runat="server">
            <asp:View ID="viewFormaLlenado" runat="server">
    <table align="center" width="90%" border="0" cellpadding="3" cellspacing="0">
                <tr>
                    <td colspan="2">
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:SiteMapPath ID="smpRegistroSup" runat="server">
                        </asp:SiteMapPath>
                    </td>
                </tr>
              <tr>
                <td colspan="2" style="height: 96px">
                    &nbsp;</td>
              </tr>        
         <tr>
            <th colspan="2" class="thtablaComun">Registro de Usuarios</th>
        </tr>
    <tr>
        <td colspan="2">
            &nbsp;</td>
    </tr>
        <tr>
            <td colspan="2">
                Informaci�n marcada con '*' es requerida</td>
        </tr>
    <tr>
        <td colspan="2">
            </td>
    </tr>
        <tr>
            <td style="width: 30%">
                *Apellido Paterno</td>
            <td style="width: 508px; height: 6px">
                <asp:TextBox ID="txtAPaterno" runat="server" MaxLength="30" Width="400px"></asp:TextBox><asp:RequiredFieldValidator
                    ID="rfvAPaterno" runat="server" ControlToValidate="txtAPaterno" ErrorMessage="Apellido paterno es un valor requerido"
                    ToolTip="Apellido paterno es un valor requerido" ForeColor="">x</asp:RequiredFieldValidator><asp:RegularExpressionValidator
                        ID="revAPaterno" runat="server" ControlToValidate="txtAPaterno"
                        ErrorMessage="El apellido paterno tiene caracteres no permitidos" ToolTip="El apellido paterno tiene caracteres no permitidos"
                        ValidationExpression="^[a-zA-Z''-'��������������\s]{1,40}$" ForeColor="">x</asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td style="width: 30%">
                Apellido Materno</td>
            <td style="width: 508px; height: 6px">
                <asp:TextBox ID="txtAMaterno" runat="server" MaxLength="30" Width="400px"></asp:TextBox><asp:RegularExpressionValidator
                    ID="revAMaterno" runat="server" ControlToValidate="txtAMaterno"
                    ErrorMessage="El apellido materno tiene caracteres no permitidos" ToolTip="El apellido materno tiene caracteres no permitidos"
                    ValidationExpression="^[a-zA-Z''-'��������������\s]{1,40}$" ForeColor="">x</asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td style="width: 30%; height: 46px;">
                * Nombre (s)</td>
            <td style="width: 508px; height: 46px;">
                <asp:TextBox ID="txtNombre" runat="server" MaxLength="50"
                    Width="400px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombre"
                    ErrorMessage="Nombre es un valor requerido" ToolTip="Nombre es un valor requerido" ForeColor="">x</asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="revNombre" runat="server" ControlToValidate="txtNombre"
                    ErrorMessage="El nombre tiene caracteres no permitidos" ValidationExpression="^[a-zA-Z''-'��������������\s]{1,40}$" ToolTip="El nombre tiene caracteres no permitidos" ForeColor="">x</asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td>* Nacionalidad</td>
            <td>
                <asp:RadioButtonList ID="rdblNacionalidad" runat="server" RepeatDirection="Horizontal" AutoPostBack="true">
                    <asp:ListItem Text="Mexicana" Value="1" Selected="true"></asp:ListItem>
                    <asp:ListItem Text="Otra" Value="0"></asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td style="width: 30%">
                *Estado en que radica</td>
            <td style="width: 508px">
                <asp:DropDownList ID="ddlEstado" runat="server" DataSourceID="odsEstado" DataTextField="DesEstado"
                    DataValueField="CveEstadoInt" Width="400px">
                </asp:DropDownList><asp:ObjectDataSource ID="odsEstado" runat="server" OldValuesParameterFormatString="original_{0}"
                    SelectMethod="GetData" TypeName="dsAppTableAdapters.spEstadoDDLTableAdapter">
                </asp:ObjectDataSource>
                <asp:RangeValidator ID="rvEstado" runat="server" ControlToValidate="ddlEstado" ErrorMessage="Indique el estado donde radica"
                    ForeColor="" MaximumValue="32" MinimumValue="1" ToolTip="Indique el estado donde radica"
                    Type="Integer">x</asp:RangeValidator>&nbsp;
            </td>
        </tr>
    <tr>
        <td style="width: 30%">
            * Escolaridad</td>
        <td style="width: 508px">
            <asp:DropDownList ID="ddlEscolaridad" runat="server" DataSourceID="odsEscolaridad"
                DataTextField="DesEscolaridad" DataValueField="CveEscolaridad" Width="400px">
            </asp:DropDownList><asp:ObjectDataSource ID="odsEscolaridad" runat="server" OldValuesParameterFormatString="original_{0}"
                SelectMethod="GetData" TypeName="dsAppTableAdapters.spEscolaridadDDLTableAdapter">
            </asp:ObjectDataSource>
            <asp:RangeValidator ID="rvEscolaridad" runat="server" ControlToValidate="ddlEscolaridad"
                ErrorMessage="Inidique su escolaridad" MaximumValue="2147483647" MinimumValue="1" Type="Integer" ToolTip="Inidique su escolaridad" ForeColor="">x</asp:RangeValidator>&nbsp;
        </td>
    </tr>
    <tr>
        <td style="width: 30%">
            * Instituci�n</td>
        <td style="width: 508px">
            <asp:DropDownList ID="ddlInstitucion" runat="server" DataSourceID="odsInstitucion"
                DataTextField="DesInstitucion" DataValueField="CveInstitucion" Width="400px">
            </asp:DropDownList><asp:ObjectDataSource ID="odsInstitucion" runat="server" OldValuesParameterFormatString="original_{0}"
                SelectMethod="GetData" TypeName="dsAppTableAdapters.spInstitucionDDLTableAdapter">
            </asp:ObjectDataSource>
            <asp:RangeValidator ID="rvInstitucion" runat="server" ControlToValidate="ddlInstitucion"
                ErrorMessage="Indique la instituci�n a la que pertenece" MaximumValue="2147483647"
                MinimumValue="1" Type="Integer" ForeColor="">x</asp:RangeValidator>
            &nbsp;&nbsp;
        </td>
    </tr>
    <tr>
        <td style="width: 30%">
            Departamento</td>
        <td style="width: 508px">
            <asp:TextBox ID="txtDepartamento" runat="server" MaxLength="150" Width="400px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="revDepartamento" runat="server" ControlToValidate="txtDepartamento"
                ErrorMessage="Departamento tiene caracteres no v�lidos" ValidationExpression="^[a-zA-Z''-'��������������\s]{1,40}$" ToolTip="Departamento tiene caracteres no v�lidos" ForeColor="">x</asp:RegularExpressionValidator></td>
    </tr>
    <tr>
        <td style="width: 30%">
            * Especialidad</td>
        <td style="width: 508px">
            <asp:TextBox ID="txtProfesion" runat="server" MaxLength="100" Width="400px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvProfesion" runat="server" ControlToValidate="txtProfesion"
                ErrorMessage="Indique su especialidad" ToolTip="Indique su especialidad" ForeColor="">x</asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="revProfesion" runat="server" ControlToValidate="txtProfesion"
                ErrorMessage="Especialidad tiene caracteres no v�lidos" ValidationExpression="^[a-zA-Z''-'��������������\s]{1,40}$" ToolTip="Especialidad tiene caracteres no v�lidos" ForeColor="">x</asp:RegularExpressionValidator></td>
    </tr>
    <tr>
        <td style="width: 30%">
            * Ocupaci�n</td>
        <td style="width: 508px">
            <asp:TextBox ID="txtOcupacion" runat="server" MaxLength="100" Width="400px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvOcupacion" runat="server" ControlToValidate="txtOcupacion"
                ErrorMessage="Indique su ocupaci�n" ToolTip="Indique su ocupaci�n" ForeColor="">x</asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="revOcupacion" runat="server" ControlToValidate="txtOcupacion"
                ErrorMessage="Ocupaci�n tiene caracteres no v�lidos" ValidationExpression="^[a-zA-Z''-'��������������\s]{1,40}$" ToolTip="Ocupaci�n tiene caracteres no v�lidos" ForeColor="">x</asp:RegularExpressionValidator></td>
    </tr>
    <tr>
        <td style="width: 30%">
            * Uso que le dar� a la informaci�n</td>
        <td style="width: 508px">
            <asp:DropDownList ID="ddlUsoInformacion" runat="server" DataSourceID="odsUsoInformacion"
                DataTextField="DesUsoInfo" DataValueField="CveUsoInfo" Width="400px">
            </asp:DropDownList><asp:ObjectDataSource ID="odsUsoInformacion" runat="server" OldValuesParameterFormatString="original_{0}"
                SelectMethod="GetData" TypeName="dsAppTableAdapters.spUsoInformacionDDLTableAdapter">
            </asp:ObjectDataSource>
            <asp:RangeValidator ID="rvUsoInfo" runat="server" ControlToValidate="ddlUsoInformacion"
                ErrorMessage="Seleccione el uso que dar� a la informaci�n" MaximumValue="2147483647"
                MinimumValue="1" Type="Integer" ToolTip="Seleccione el uso que dar� a la informaci�n" ForeColor="">x</asp:RangeValidator>
            &nbsp;&nbsp;
        </td>
    </tr>
    <tr>
        <td style="width: 30%">
            * Correo electr�nico</td>
        <td style="width: 508px">
            <asp:TextBox ID="txtEmail" runat="server" MaxLength="100" Width="400px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail"
                ErrorMessage="Correo electr�nico es requerido" ToolTip="Correo electr�nico es requerido" ForeColor="">x</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail"
                ErrorMessage="La cuenta de correo electr�nico esta mal escrita" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ToolTip="La cuenta de correo electr�nico esta mal escrita" ForeColor="">x</asp:RegularExpressionValidator>
            <asp:CustomValidator ID="cmvEmail" runat="server" ControlToValidate="txtUsuario"
                ErrorMessage="El correo electr�nico ya esta registrado" ToolTip="El correo electr�nico ya esta registrado" ForeColor="">x</asp:CustomValidator></td>
    </tr>
    <tr>
        <td colspan="2">
        </td>
    </tr>
    <tr>
        <td style="width: 30%">
            * Usuario</td>
        <td style="width: 508px">
            <asp:TextBox ID="txtUsuario" runat="server" Width="200px" ToolTip="Escriba la clave de usuario que le gustar�a utilizar; no utilizar espacios, acentos � caracteres extra�os; ej. eperez" MaxLength="15"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvUsuario" runat="server" ControlToValidate="txtUsuario"
                ErrorMessage="Indique el usuario que desea para el sistema" ToolTip="Indique el usuario que desea para el sistema" ForeColor="">x</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revUsuario" runat="server" ControlToValidate="txtUsuario"
                ErrorMessage="Usuario tiene caracteres no v�lidos" ValidationExpression="^[a-zA-Z''-'��������������_\s]{1,40}$" ToolTip="Usuario tiene caracteres no v�lidos" ForeColor="">x</asp:RegularExpressionValidator>
            <asp:CustomValidator ID="cmvUsuario" runat="server" ControlToValidate="txtUsuario"
                ErrorMessage="El nombre de usuario ya esta siendo utilizado. Seleccione uno nuevo" ToolTip="El nombre de usuario ya esta siendo utilizado. Seleccione uno nuevo" ForeColor="">x</asp:CustomValidator></td>
    </tr>
    <tr>
        <td style="width: 30%">
            * Contrase�a</td>
        <td style="width: 508px">
            <asp:TextBox ID="txtContrasenia" runat="server" MaxLength="20" TextMode="Password"
                ToolTip="No olvide su contrase�a, la necesitar� despu�s para ingresar al sistema"
                Width="200px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvConstasenia" runat="server" ControlToValidate="txtContrasenia"
                ErrorMessage="Escriba la contrase�a que desea utilizar en el sistema" ToolTip="Escriba la contrase�a que desea utilizar en el sistema" ForeColor="">x</asp:RequiredFieldValidator></td>
    </tr>
    <tr>
        <td style="width: 30%">
            * Repetir contrase�a</td>
        <td style="width: 508px">
            <asp:TextBox ID="txtRContrasenia" runat="server" MaxLength="20" TextMode="Password"
                ToolTip="No olvide su contrase�a, la necesitar� despu�s para ingresar al sistema"
                Width="200px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvRContrasenia" runat="server" ControlToValidate="txtRContrasenia"
                ErrorMessage="Escriba de nuevo su contrase�a" ToolTip="Escriba de nuevo su contrase�a" ForeColor="">x</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="cvContrasenias" runat="server" ControlToCompare="txtContrasenia"
                ControlToValidate="txtRContrasenia" ErrorMessage="Las contrase�as no coinciden" ToolTip="Las contrase�as no coinciden" ForeColor="">x</asp:CompareValidator></td>
    </tr>
    <tr>
        <td style="width: 30%">
        </td>
        <td style="width: 508px">
            <asp:ValidationSummary ID="vsValidacion" runat="server" DisplayMode="List" ForeColor="" HeaderText="Se encontraron los siguientes errores:" />
        </td>
    </tr>
    <tr>
        <td style="width: 30%">
        </td>
        <td style="width: 508px">
            &nbsp;<asp:ImageButton ID="ibtnRegistrar" runat="server" ImageUrl="~/images/aplicacion/btnRegistrar.gif" PostBackUrl="~/Registro.aspx" /></td>
    </tr>
        <tr>
            <td colspan="2" style="height: 16px">
                &nbsp;
            </td>
        </tr>
                <tr style="font-size: 9pt">
                <td style="height: 16px" colspan="2">
                    <asp:SiteMapPath ID="smpContactanosInf" runat="server">
                    </asp:SiteMapPath>
                </td>
            </tr>
    </table>
            </asp:View>
            <asp:View ID="viewResultado" runat="server">
                <table align="center" width="90%" border="0" cellpadding="3" cellspacing="0">
                    <tr>
                        <td colspan="2">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:SiteMapPath ID="SiteMapPath1" runat="server">
                            </asp:SiteMapPath>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="height: 21px">
                            &nbsp;</td>
                    </tr>
         <tr>
            <th colspan="2" class="thtablaComun">Registro de Usuarios</th>
        </tr>
    <tr>
        <td colspan="2">
            &nbsp;</td>
    </tr>
                    <tr>
                        <td colspan="2">
                            El usuario ha quedado registrado, vaya a la p�gina inicial para ingresar a la aplicaci�n.<br />
                            <br />
                            <strong>"Los datos personales por usted proporcionados ser�n protegidos en t�rminos
                                de la Ley Federal de Transparencia y Acceso a la Informaci�n P�blica Gubernamental
                                y los Lineamientos de Protecci�n de Datos Personales emit�dos por el IFAI, y se
                                registrar�n en el Sistema Electr�nico de Atenci�n Ciudadana cuya finalidad es supervisar,
                                controlar y dar seguimiento a la atenci�n que se brinde a la petici�n (queja, denuncia,
                                seguimiento de irregularidad, sugerencia, solicitud o reconocimiento) presentada,
                                lo anterior con fundamento en el art�culo 37, fracciones IV y VII del Reglamento
                                Interior de la Secretar�a de la Funci�n P�blica."</strong></td>
                    </tr>
                    <tr>
                        <td colspan="2" style="height: 16px">
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 16px" colspan="2">
                            &nbsp;</td>
                    </tr>
                </table>
            </asp:View>
        </asp:MultiView>
    </td>
  </tr>  
  </table>
</asp:Content>

