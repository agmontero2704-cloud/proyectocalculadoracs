using System;
using System.Web.UI;

namespace areatriangulo
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e) { }

        protected void btnTriangulo_Click(object sender, EventArgs e)
        {
            double b = Convert.ToDouble(txtBase.Text);
            double h = Convert.ToDouble(txtAltura.Text);
            double area = (b * h) / 2;
            lblTriangulo.Text = "Area del triangulo = " + area.ToString("N2");
        }

        protected void btnCuadrado_Click(object sender, EventArgs e)
        {
            double l = Convert.ToDouble(txtLado.Text);
            double area = l * l;
            lblCuadrado.Text = "Area del cuadrado = " + area.ToString("N2");
        }

        protected void btnCirculo_Click(object sender, EventArgs e)
        {
            double r = Convert.ToDouble(txtRadio.Text);
            double area = Math.PI * r * r;
            lblCirculo.Text = "Area del circulo = " + area.ToString("N2");
        }
    }
}