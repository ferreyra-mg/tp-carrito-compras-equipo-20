﻿<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Master.Master" CodeBehind="Productos.aspx.cs" Inherits="tp_carrito_compras_equipo_20.Productos" %>

<%--<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            TEXTO
            <!-- MOSTRAR LOS ARTICULOS QUE EL CLIENTE ESCOGIO JUNTO CON LA CANTIDAD Y EL PRECIO TOTAL -->


        </div>
    </form>
</body>
</html>--%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Lista de Productos</h1>

        <%
            foreach (var art in articulos)
            { 
            
            %>
    

        <section style="background-color: #eee;">
            <div class="container py-4">
            <div class="row justify-content-center mb-3">
                <div class="col-md-12 col-xl-10">
                <div class="card shadow-0 border rounded-3">
                    <div class="card-body">
                    <div class="row">
                        <div class="col-md-9 col-lg-3 col-xl-3 mb-4 mb-lg-0">
                        <div class="bg-image hover-zoom ripple rounded ripple-surface">
                            <img src="https://picsum.photos/200?grayscale&random=<%: art.Codigo %>" class="w-80" />
                            <a href="#!">
                            <div class="hover-overlay">
                                <div class="mask" style="background-color: rgba(253, 253, 253, 0.15);"></div>
                            </div>
                            </a>
                        </div>
                        </div>
                        <div class="col-md-6 col-lg-6 col-xl-6">
                        <h5><%: art.Nombre %></h5>
                        <div class="mt-1 mb-0 text-secondary small">
                            <span><%: art.Categoria %></span>
                        </div>
                        <div class="mb-2 text-secondary small">
                            <span><%: art.Marca %></span>
                        
                        </div>
                        <p class="text-truncate mb-4 mb-md-0">
                            <%: art.Descripcion %>
                        </p>
                        </div>
                        <div class="col-md-6 col-lg-3 col-xl-3 border-sm-start-none border-start">
                        <div class="d-flex flex-row align-items-center mb-1">
                            <h4 class="mb-1 me-1">$ <%: art.Precio %></h4>
                        </div>

                        <div class="d-flex flex-column mt-4">
                            <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" class="btn btn-danger btn-sm" type="button"></asp:Button>
                            <div class="form-outline">
                                <asp:TextBox ID="TextBox1" runat="server" type="number" min="0" value="1" class="form-control" style="text-align: center;" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                            </div>
                            <asp:Label ID="lblTotal" runat="server" Text="0" Visible="false" OnLoad="lblSuma_Load"/>
                        </div>
                        </div>
                    </div>
                    </div>
                </div>
                </div>
            </div>
            </div>
        </section>
            <%}%>

            <div class="form-outline mx-auto" style="width: 22rem;">
                <label class="form-label" for="form2">Cantidad total a Pagar</label>
                
                <asp:Label ID="lblTotalPagar" runat="server" Text="$" class="form-control" readonly="true"></asp:Label>
            </div>
</asp:Content>

