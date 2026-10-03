using System;
using System.Web.UI;

namespace areatriangulo
{
    public partial class WebForm2 : Page
    {
        protected void Page_Load(object sender, EventArgs e) { }

        protected void btnIrTriangulo_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Figuras/Triangulo.aspx");
        }

        protected void btnIrCuadrado_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Figuras/Cuadrado.aspx");
        }

        protected void btnIrCirculo_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Figuras/Circulo.aspx");
        }
    }
}
