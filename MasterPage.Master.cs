using commons;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    lblnombre.Text = datos.nombre + " " + datos.paterno + " " + datos.materno;
                    lbledadu.Text = datos.edad.ToString();
                } 
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            Response.Redirect("DatosPersonales.aspx");
        }

        protected void lnkcerrarsesion_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}