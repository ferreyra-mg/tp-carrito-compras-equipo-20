using System;

namespace pokedex_web
{
    public partial class Master : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        protected void btnSalir_Click(object sender, EventArgs e)
        {
        }

        protected void ImageButton1_Click(object sender, System.Web.UI.ImageClickEventArgs e)
        {
            Response.Redirect("Productos.aspx");
        }
    }
}