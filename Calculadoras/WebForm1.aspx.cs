using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace areatriangulo
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalcular_Click(object sender, EventArgs e)
        {
            double baseT = Convert.ToDouble(txtBase.Text);
            double altura = Convert.ToDouble(txtAltura.Text);
            double area = (baseT * altura) / 2;
            lblResultado.Text = "El área del triángulo es: " + area.ToString("N2");
        }

        protected void Btnlimpiar_Click(object sender, EventArgs e)
        {
            txtBase.Text = "";
            txtAltura.Text = "";
            lblResultado.Text = "";
        }

        protected void txtBase_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtAltura_TextChanged(object sender, EventArgs e)
        {

        }
    }
}