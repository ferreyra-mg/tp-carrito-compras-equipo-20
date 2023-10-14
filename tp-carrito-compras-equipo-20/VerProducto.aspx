<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="VerProducto.aspx.cs" Inherits="tp_carrito_compras_equipo_20.VerProducto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<div class="container">
  <div class="row">
    <div class="col">
                      <div id="carousel" class="carousel carousel-dark slide">
  <div class="carousel-indicators">
      <%int index = 0;
          foreach (var img in imagenes)
          {
                if (imagenes.First() == img)
                {%>
                    <button type="button" data-bs-target="#carousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                <%}
                else
                {%> 
                    <button type="button" data-bs-target="#carousel" data-bs-slide-to="<%: index %>" aria-label="Slide <%: index + 1 %>"></button>
                <%}
              index++;
          }%>

  </div>
  <div class="carousel-inner" style=" width:100%; height: 700px !important;">
        <%
            foreach (var img in imagenes)
            {
                
                if (imagenes.First()== img)
                {
                    %>
                    <div class="carousel-item active">
                        <img src="<%: img.Url %>" class="d-block w-100" alt="...">
                    </div>

        <%
                }

            else
        
                %>
        <div class="carousel-item">
            <img src="<%: img.Url %>" class="d-block w-100" alt="...">
        </div>
        <%
                
            }

          %>

  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carousel" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carousel" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
    </div>
    <div class="col">
        <h1><asp:Label runat="server" ID="lblProducto" class="nombre-producto"/></h1>
        <asp:Label runat="server" ID="lblDescProducto" class="info-producto"/><br />

        <div class="container text-center" style="margin-top:200px">
            <div class="row">
                <div class="col">
                    <span class="texto">Marca</span><br />
                    <h3><asp:Label runat="server" ID="lblMarca" /></h3>
                </div>
                <div class="col">
                    <span class="texto">Categoria</span><br />
                    <h3><asp:Label runat="server" ID="lblCategoria" /></h3>
                </div>
                <div class="col">
                    <h2><asp:Label runat="server" ID="lblPrecio" /></h2>
                </div>
                
            </div>
        </div>
        <div class="container" style="margin-top:100px">
            <div class="row">
                <div class="col">
                    <a href="Productos.aspx?id=<%: articulo.Id %>" class="btn btn-light">Agregar al carrito</a>
                </div>
            </div>

    </div>
  </div>
</div>    

</asp:Content>
