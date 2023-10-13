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
            articulos = Articulos.Listar();
            if(Session["ID"] == null)
            {
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('¿Desea continuar?');", true);
   
                //Response.Redirect("Default.aspx");
            }
            
            decimal total = 0;
            foreach (var art in articulos)
            {
                total += art.Precio;
            }

            lblTotalPagar.Text = string.Format(pesos, "{0:C}", total);
        }

        protected void lblSuma_Load(object sender, EventArgs e)
        {
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            foreach (var art in articulos)
            {
                //Actualiza el valor de la etiqueta
                lblTotal.Text = ObtenerMultiplicacion(art).ToString();

                //Haz visible la etiqueta
                lblTotal.Visible = true;
            }
        }

        private decimal ObtenerMultiplicacion(Articulo art)
        {   
            decimal suma = 0;

            // Obtén el valor de los input
            decimal valor1 = art.Id;
            decimal valor2 = art.Precio;

            // Suma los valores
            suma = valor1 * valor2;
            return suma;
            
        }
    }
}