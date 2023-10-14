<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="tp_carrito_compras_equipo_20.Default"  EnableEventValidation="false"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Lista de Productos</h1>


    
    <div class="row row-cols-1 row-cols-md-3 g-4 w-75">
        <%
            foreach (var art in articulos)
            {
                infoProducto.Text = art.Nombre;
                infoProducto.NavigateUrl = "VerProducto.aspx?id=" + art.Id;

                string imagen= "";
                if( art.Imagenes.Count > 0){
                    imagen = art.Imagenes[0].Url;
                }
                else imagen = @"imagenes\imagen.png";
            %>
                
                <div class="col">
                    <div class="card h-100 border border-0" onclick="VerProducto">

                        <div class="hovereffect">
                        <img src="<%: imagen %>" class="mx-auto hovereffect" alt="..." onerror="this.onload = null; this.src='imagenes/imagen.png'">
                        <div class="overlay">
                <p class="icon-links">
                    <a href="Productos.aspx?id=<%: art.Id %>">
                        <%--<asp:Button ID="Button1" runat="server" Text="Agregar al carrito" OnClick="Button1_Click" />--%>
                        Agregar al carrito
                    </a>
                </p>
            </div>
                        </div>
      
                    <div class="card-body">
                        <h5 class="card-title nombre-producto" >
                            <asp:HyperLink ID="infoProducto" runat="server" OnClick="verInfoProducto"></asp:HyperLink></h5>
                        <p class="card-text info-producto"><%: art.Descripcion %></p>
                        <p class="card-text info-producto"><%: string.Format(pesos, "{0:C}", art.Precio) %></p>
        
                    </div>
                    
                    </div>
              </div>
            <%}%>
    </div>
</asp:Content>
