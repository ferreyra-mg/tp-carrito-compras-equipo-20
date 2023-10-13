using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using dominio;
using Negocio;

namespace tp_carrito_compras_equipo_20
{
    public partial class VerProducto : System.Web.UI.Page
    {
        Articulo articulo = new Articulo();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                string idProducto = Request.QueryString["id"];
                articulo = Articulos.Ver(idProducto);

                if (articulo.Id == 0) HttpNotFound();

                lblProducto.Text = articulo.Nombre;

            }

        }

        private void HttpNotFound()
        {
            Response.Clear();
            Response.StatusCode = 404;
            Response.End();
            HttpContext.Current.ApplicationInstance.CompleteRequest();
        }
    }
}