using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio;
using Negocio;

namespace tp_carrito_compras_equipo_20
{
    public partial class VerProducto : System.Web.UI.Page
    {
        Articulo articulo = new Articulo();
        Label lblProducto = new Label();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                string idProducto = Request.QueryString["id"];
                articulo = Articulos.Ver(idProducto);
                lblProducto.Text = articulo.Nombre;
            }

        }
    }
}