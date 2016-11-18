<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Temas_de_interes.aspx.vb" Inherits="Temas_de_interes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<style>
    .textbox{
        border-color:_#00ff21;
        background-color: #97f89f;
        font-family: 'MS Gothic';
        font-size: 20px;
        width: 90%;
        height: 30px;
    }
    table{
        width: 80%;
        border-radius: 25px;       
        box-shadow: 15px;
        border: 10px solid #5d64e4;
        vertical-align:middle;
    }
    .tdlabel{
        width: 20%;

    }
</style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <div style="vertical-align:initial;"></div>
    <form id="TemasInterez" runat="server">
       <table>
           <tbody>
               <tr>
                   <td class="tdlabel"> 
                       <asp:Label ID="lbinstitucion"  runat="server" Text="Institucion:"></asp:Label>
                   </td>
                   <td>
                       <asp:TextBox runat="server" ID="txtinstitucion" CssClass="textbox"  ></asp:TextBox>
                   </td>
               </tr>
                <tr>
                   <td class="tdlabel">
                       <asp:Label ID="lbNombre" runat="server" Text="Nombre del proyecto:" ></asp:Label>
                   </td>
                    <td>
                        <asp:TextBox ID="txtnombrepro" runat="server" CssClass="textbox" ></asp:TextBox>
                    </td>
               </tr>
                <tr>
                   <td class="tdlabel">
                       <asp:Label ID="lbtitulo" runat="server" Text="Titulo:" ></asp:Label>
                   </td>
                    <td>
                        <asp:TextBox ID="txttitulo" runat="server" CssClass="textbox"  ></asp:TextBox>
                    </td>
               </tr>
               <tr>
                   <td>
                       <asp:ImageButton ID="btnguardar" runat="server" ImageUrl="~/images/aplicacion/btnGuardar.gif" OnClick="btnguardar_Click" />     
                   </td>
                   <td>
                         <asp:ImageButton ID="btncancel" runat="server" ImageUrl="~/images/aplicacion/btnCancelar.gif"  OnClick="btncancel_Click" />
                   </td>
               </tr>
           </tbody>
       </table>
    </form>
</body>
</html>
