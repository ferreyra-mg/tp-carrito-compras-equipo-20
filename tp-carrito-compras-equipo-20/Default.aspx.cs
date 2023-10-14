using dominio;
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
        public List<Marca> marcas { get; set; } 

        protected void Page_Load(object sender, EventArgs e)
        {
            articulos = Articulos.Listar();

            var marcas = new List<Marca>
            {
                new Marca { Id = 0, Descripcion = "Todos" }
            };
            marcas.AddRange(Marcas.Listar());

            var cats = new List<Categoria>
            {
                new Categoria { Id = 0, Descripcion = "Todos" }
            };
            cats.AddRange(Categorias.Listar());

            ddlMarcas.DataSource = marcas;
            ddlMarcas.DataValueField = "Id";
            ddlMarcas.DataTextField = "Descripcion";
            ddlMarcas.DataBind();

            ddlCategorias.DataSource = cats;
            ddlCategorias.DataValueField = "Id";
            ddlCategorias.DataTextField = "Descripcion";
            ddlCategorias.DataBind();

            var marcaId = Request.QueryString["marca"];

            if (marcaId != null) 
            {
                if (marcaId == "") marcaId = "0";
                ddlMarcas.SelectedValue = marcaId;
                if (marcaId != "0") articulos = articulos.FindAll(a => a.IdMarca.ToString() == ddlMarcas.SelectedValue);
            }

            var catId = Request.QueryString["cat"];

            if (catId != null)
            {
                if (catId == "") catId = "0";
                ddlCategorias.SelectedValue = catId;
                if (catId != "0") articulos = articulos.FindAll(a => a.IdCategoria.ToString() == ddlCategorias.SelectedValue);
            }
        }
    }

}