using System;
using System.Web.UI;

namespace areatriangulo.Figuras
{
    public partial class Cuadrado : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnCalcular_Click(object sender, EventArgs e)
        {
            double lado;

            if (!double.TryParse(txtLado.Text, out lado))
            {
                lblResultado.Text = "Ingrese un valor numérico válido.";
                return;
            }

            if (lado <= 0)
            {
                lblResultado.Text = "El lado debe ser mayor que cero.";
                return;
            }

            double area = lado * lado;
            lblResultado.Text = "El área del cuadrado es: " + area.ToString("N2");
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            txtLado.Text = "";
            lblResultado.Text = "";
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/WebForm2.aspx");
        }
    }
}
