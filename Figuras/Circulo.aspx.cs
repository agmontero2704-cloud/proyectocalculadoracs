using System;
using System.Web.UI;

namespace areatriangulo.Figuras
{
    public partial class Circulo : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnCalcular_Click(object sender, EventArgs e)
        {
            double radio;

            if (!double.TryParse(txtRadio.Text, out radio))
            {
                lblResultado.Text = "Ingrese un valor numérico válido.";
                return;
            }

            if (radio <= 0)
            {
                lblResultado.Text = "El radio debe ser mayor que cero.";
                return;
            }

            double area = Math.PI * radio * radio;
            lblResultado.Text = "El área del círculo es: " + area.ToString("N2");
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            txtRadio.Text = "";
            lblResultado.Text = "";
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/WebForm2.aspx");
        }
    }
}
