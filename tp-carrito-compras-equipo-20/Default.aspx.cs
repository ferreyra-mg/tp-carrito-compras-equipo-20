using dominio;
using Negocio;
using System;
using System.Collections.Generic;

namespace tp_carrito_compras_equipo_20
{
    public partial class Default : System.Web.UI.Page
    {
        public List<Articulo> articulos { get; set; }
        
        protected void Page_Load(object sender, EventArgs e)
        {
            articulos = Articulos.Listar();
        }
    }
}