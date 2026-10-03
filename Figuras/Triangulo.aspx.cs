using System;
using System.Web.UI;

namespace areatriangulo.Figuras
{
    public partial class Triangulo : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnCalcular_Click(object sender, EventArgs e)
        {
            double baseT, altura;

            if (!double.TryParse(txtBase.Text, out baseT) || !double.TryParse(txtAltura.Text, out altura))
            {
                lblResultado.Text = "Ingrese valores numéricos válidos.";
                return;
            }

            if (baseT <= 0 || altura <= 0)
            {
                lblResultado.Text = "La base y la altura deben ser mayores que cero.";
                return;
            }

            double area = (baseT * altura) / 2;
            lblResultado.Text = "El área del triángulo es: " + area.ToString("N2");
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            txtBase.Text = "";
            txtAltura.Text = "";
            lblResultado.Text = "";
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/WebForm2.aspx");
        }
    }
}
