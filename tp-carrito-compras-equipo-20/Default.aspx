<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="tp_carrito_compras_equipo_20.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Lista de Productos</h1>
    <div class="row row-cols-1 row-cols-lg-2 g-4">

        <%
            foreach (var art in articulos)
            { %>
                <div class="col">
                    <div class="card mb-1">
                        <div class="row g-0">
                            <div class="col-4 col-md-4">
                                <img src="https://picsum.photos/200?grayscale&random=<%: art.Codigo %>" class="img-thumbnail img-fluid rounded-start" alt="...">
                            </div>
                            <div class="col-8 col-md-8">
                                <div class="card-body d-flex flex-column justify-content-between h-100 pb-1 pb-md-2">
                                    <div>
                                        <h5 class="card-title">Articulo <%: art.Nombre %></h5>
                                        <p class="card-text" style="font-size: 0.75rem;""><%: art.Descripcion %></p>
                                    </div>
                                    <div class=" d-flex justify-content-end gap-1 pt-3 pt-md-0">
                                        <a class="btn btn-success btn-sm text-white">Agregar al carrito</a>
                                        <a href="Detalles.aspx?codigo=<%: art.Codigo %>" class="btn btn-primary btn-sm text-white">Ver detalles</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            <%}%>
    </div>
</asp:Content>
