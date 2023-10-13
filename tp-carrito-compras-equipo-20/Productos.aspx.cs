using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio;
using Negocio;

namespace tp_carrito_compras_equipo_20
{
    public partial class Productos : System.Web.UI.Page
    {
        //iniciar todos los atributos (articulos) de la session y verificar dentro de la funcion page load si estan en null o no
        //si no estan en null, mostrar los elementos dentro del carrito con las cantidad, precio y total a pagar. 
        public List<Articulo> articulos { get; set; }
        public CultureInfo pesos = new CultureInfo("es-AR");
        protected void Page_Load(object sender, EventArgs e)
        {
            var id = Request.QueryString["id"];

            articulos = (List<Articulo>)Session["articulos"];
            if (articulos == null)
            {
                articulos = new List<Articulo>();
                if (id != null)
                {
                    Articulo art = Articulos.Ver(id);
                    art.Cantidad = art.Cantidad +1;
                    articulos.Add(art);
                }
            }

            List<Articulo> articulosTotal = Articulos.Listar();

            if(id != null)
            {
                bool exist = false;
                foreach (var art in articulosTotal)
                {
                    if (id == art.Id.ToString())
                    {
                        foreach (var articu in articulos)
                        {
                            if (art.Id == articu.Id)
                            {
                                articu.Cantidad = articu.Cantidad + 1;
                                exist = true;
                            }
                        }

                        if (exist == true)
                        {
                            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Ya existe este producto en el carrito. Se agrego 1 mas');", true);
                        } else
                        {
                            art.Cantidad = art.Cantidad + 1;
                            articulos.Add(art);
                        }
                    }
                }
            }

            Session["articulos"] = articulos;
            
            decimal total = 0;
            foreach (var arti in articulos)
            {
                total += (arti.Precio * arti.Cantidad);
            }

            lblTotalPagar.Text = string.Format(pesos, "{0:C}", total);
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}