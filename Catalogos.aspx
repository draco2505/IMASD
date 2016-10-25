<%@ Page Language="VB" MasterPageFile="~/mpInterna.master" AutoEventWireup="false" CodeFile="Catalogos.aspx.vb" Inherits="Catalogos" title="Cat�logos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphPrincipalInterna" Runat="Server">

<asp:SiteMapPath ID="smpRegistroSup" runat="server"></asp:SiteMapPath>
    <br />
    <center>
    <asp:Label ID="lbTitulo" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="White"
        Text="CAT�LOGOS"></asp:Label>
    </center><br /><br />
<asp:Panel ID="pFondoCatalogo" runat="server" CssClass="Catalogo_Fondo">
    <%--<a href="CatTemplate.aspx?i=AreaForestal" class="Catalogo_Item" style="position:absolute; left:121px; top:20px" >
        <img src="images/aplicacion/Catalogo_AreaForestal.gif" alt="Cat�logo de �reas forestales" border="0" />
    </a>--%>
    <a href="CatTemplate.aspx?i=AreaTematicas" class="Catalogo_Item"style="position:absolute; left:511px; top:54px" >
        <img src="images/aplicacion/Catalogo_AreaTematica.gif" alt="Cat�logo de �reas tem�ticas" border="0" />
    </a>
    <a href="CatTemplate.aspx?i=DifDiv" class="Catalogo_Item" style="position:absolute; left:709px; top:204px">
        <img src="images/aplicacion/Catalogo_DifDiv.gif" alt="Cat�logo de difusi�n y divulgaci�n" border="0" />
    </a>
    <a href="CatTemplate.aspx?i=Ecosistemas" class="Catalogo_Item" style="position:absolute; left:190px; top:61px">
        <img src="images/aplicacion/Catalogo_Ecosistemas.gif" alt="Cat�logo de ecosistemas" border="0" />
    </a>
    <a href="CatTemplate.aspx?i=Escalas" class="Catalogo_Item" style="position:absolute; left:118px; top:326px">
        <img src="images/aplicacion/Catalogo_Escalas.gif" alt="Cat�logo de escalas" border="0" />
    </a>
    <a href="CatTemplate.aspx?i=Escolaridad" class="Catalogo_Item" style="position:absolute; left:3px; top:340px">
        <img src="images/aplicacion/Catalogo_Escolaridad.gif" alt="Cat�logo de escolaridad" border="0" />
    </a>
    <a href="CatEspecieTipo.aspx" class="Catalogo_Item" style="position:absolute; left:348px; top:10px">
        <img src="images/aplicacion/Catalogo_TipoEspecie.gif" alt="Cat�logo de tipos de especie" border="0" />
    </a>
    <a href="CatEspecies_Nvo.aspx" class="Catalogo_Item" style="position:absolute; left:348px; top:56px">
        <img src="images/aplicacion/Catalogo_Especies.gif" alt="Cat�logo de especies" border="0" />
    </a>
    <a href="CatEstado.aspx" class="Catalogo_Item" style="position:absolute; left:536px; top:391px">
        <img src="images/aplicacion/Catalogo_Estados.gif" alt="Cat�logo de estados" border="0" />
    </a>
    <a href="CatEstatus.aspx" class="Catalogo_Item" style="position:absolute; left:129px; top:90px">
        <img src="images/aplicacion/Catalogo_Estatus.gif" alt="Cat�logo de estatus" border="0" />
    </a>
    <a href="CatGastos.aspx" class="Catalogo_Item" style="position:absolute; left:26px; top:177px">
        <img src="images/aplicacion/Catalogo_Gastos.gif" alt="Cat�logo de gastos" border="0" />
    </a>
    <a href="CatInfraestructura.aspx" class="Catalogo_Item" style="position:absolute; left:283px; top:424px">
        <img src="images/aplicacion/Catalogo_Infraestructura.gif" alt="Cat�logo de infraestructura" border="0" />
    </a>
    <a href="CatInstitucion.aspx" class="Catalogo_Item" style="position:absolute; left:424px; top:424px">
        <img src="images/aplicacion/Catalogo_Instituciones.gif" alt="Cat�logo de instituciones" border="0" />
    </a>
    <a href="CatMpio.aspx" class="Catalogo_Item" style="position:absolute; left:536px; top:418px">
        <img src="images/aplicacion/Catalogo_Municipios.gif" alt="Cat�logo de municipios" border="0" />
    </a>
    <a href="CatNivel.aspx" class="Catalogo_Item" style="position:absolute; left:680px; top:320px">
        <img src="images/aplicacion/Catalogo_Nivel.gif" alt="Cat�logo de niveles de usuario" border="0" />
    </a>
    <a href="CatTemplate.aspx?i=Objeto" class="Catalogo_Item" style="position:absolute; left:26px; top:90px">
        <img src="images/aplicacion/Catalogo_Objetos.gif" alt="Cat�logo de objetos" border="0" />
    </a>
    <a href="CatParticipante.aspx" class="Catalogo_Item" style="position:absolute; left:3px; top:297px">
        <img src="images/aplicacion/Catalogo_Participantes.gif" alt="Cat�logo de participantes" border="0" />
    </a>
    <a href="CatTemplate.aspx?i=Problematica" class="Catalogo_Item" style="position:absolute; left:446px; top:30px">
        <img src="images/aplicacion/Catalogo_Problematicas.gif" alt="Cat�logo de probleam�ticas" border="0" />
    </a>
    <a href="CatRegion.aspx" class="Catalogo_Item" style="position:absolute; left:618px; top:273px">
        <img src="images/aplicacion/Catalogo_Regiones.gif" alt="Cat�logo de Regiones" border="0" />
    </a>
    <a href="CatTemplate.aspx?i=SectorTecnologia" class="Catalogo_Item" style="position:absolute; left:114px; top:381px">
        <img src="images/aplicacion/Catalogo_SectoresTecnologia.gif" alt="Cat�logo de sectores de tecnolog�a" border="0" />
    </a>
    <a href="CatTipoApoyo.aspx" class="Catalogo_Item" style="position:absolute; left:76px; top:132px">
        <img src="images/aplicacion/Catalogo_TiposApoyo.gif" alt="Cat�logo de tipo de apoyos" border="0" />
    </a>
    <a href="CatTemplate.aspx?i=TipoInfraestructura" class="Catalogo_Item" style="position:absolute; left:283px; top:458px">
        <img src="images/aplicacion/Catalogo_TiposInfraestructura.gif" alt="Cat�logo de tipos de infraestructura" border="0" />
    </a>   
    <a href="CatTemplate.aspx?i=TipoGasto" class="Catalogo_Item" style="position:absolute; left:3px; top:208px">
        <img src="images/aplicacion/Catalogo_TiposGastos.gif" alt="Cat�logo de tipos de gastos" border="0" />
    </a>
    <a href="CatTemplate.aspx?i=TipoParticipante" class="Catalogo_Item" style="position:absolute; left:3px; top:247px">
        <img src="images/aplicacion/Catalogo_TiposParticipantes.gif" alt="Cat�logo de tipos de participantes" border="0" />
    </a>
    <a href="CatTemplate.aspx?i=TipoProducto" class="Catalogo_Item" style="position:absolute; left:682px; top:136px">
        <img src="images/aplicacion/Catalogo_TiposProductos.gif" alt="Cat�logo de tipos de productos" border="0" />
    </a>
    <a href="CatTemplate.aspx?i=TipoProyecto" class="Catalogo_Item" style="position:absolute; left:561px; top:81px">
        <img src="images/aplicacion/Catalogo_TiposProyecto.gif" alt="Cat�logo de tipos de proyectos" border="0" />
    </a>
    <a href="CatTemplate.aspx?i=UsoInfo" class="Catalogo_Item" style="position:absolute; left:680px; top:362px">
        <img src="images/aplicacion/Catalogo_UsoInfo.gif" alt="Cat�logo uso de informaci�n" border="0" />
    </a>
    <a href="CatTemplate.aspx?i=Vegetacion" class="Catalogo_Item" style="position:absolute; left:256px; top:30px">
        <img src="images/aplicacion/Catalogo_Vegetacion.gif" alt="Cat�logo de vegetaci�n" border="0" />
    </a>
    <a href="CatResponsableTecnico.aspx" class="Catalogo_Item" style="position:absolute; left:0px; top:30px">
        <img src="images/aplicacion/Catalogo_ResponsableTecnico.gif" alt="Responsable T�cnico" border="0" />
    </a>
    
</asp:Panel>

</asp:Content>

