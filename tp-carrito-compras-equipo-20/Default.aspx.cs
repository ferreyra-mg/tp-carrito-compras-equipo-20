﻿using dominio;
using Negocio;
using System;
using System.Collections.Generic;
using System.Collections;
using System.Globalization;

namespace tp_carrito_compras_equipo_20
{
    public partial class Default : System.Web.UI.Page
    {
        public List<Articulo> articulos { get; set; }
        public CultureInfo pesos = new CultureInfo("es-AR");



        protected void Page_Load(object sender, EventArgs e)
        {
            articulos = Articulos.Listar();


        }

        protected void Button1_Click(object sender, EventArgs e)
        { 
        }
    }

}