using System;
using System.Web.UI;

namespace tp_carrito_compras_equipo_20
{
    public partial class Detalles : Page
    {
        public string Titulo { get; set; }
        public string IDArticulo { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            IDArticulo = Request.QueryString["id"];
            Title = "TP Carrito de Compras - Detalles Articulo " + IDArticulo;
            Titulo = "Detalles del Articulo " + IDArticulo;
        }
    }
}