<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="tp_carrito_compras_equipo_20.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Lista de Productos</h1>


    
    <div class="row row-cols-1 row-cols-md-3 g-4 w-75">
        <%
            foreach (var art in articulos)
            { 
            
            %>
                
                <div class="col">
                    <div class="card h-100 border border-0">

                        <div class="hovereffect">
                        <img src="https://picsum.photos/200?grayscale&random=<%: art.Codigo %>" class="mx-auto" alt="...">
                        <div class="overlay">
                <p class="icon-links">
                    <a href="#">
                        Agregar al carrito
                    </a>
                </p>
            </div>
                        </div>
      
                    <div class="card-body">
                        <a href="#" class="btn btn-light rounded-circle btn-agregar">+</a>
                        <h5 class="card-title nombre-producto"><%: art.Nombre %></h5>
                        <p class="card-text info-producto"><%: art.Descripcion %></p>
        
                    </div>
                    
                    </div>
              </div>
            <%}%>
    </div>
</asp:Content>
