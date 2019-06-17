using BusinessCaisa;
using commons;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Registro : System.Web.UI.Page
    {
        BusUsuario bu = new BusUsuario();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }

        protected void btncancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void btnregistrar_Click(object sender, EventArgs e)
        {
            try
            {
                EntitiesCaisa ec = new EntitiesCaisa();

                ec.email = txtemail.Text;
                ec.usuario = Seguridad.Encriptar(txtusuario.Text);
                ec.contrasena = Seguridad.Encriptar(txtpass.Text);
                ec.confirmarcontrasena = txtconfpass.Text;
                ec.nombre = Seguridad.Encriptar(txtnombre.Text);
                ec.paterno = Seguridad.Encriptar(txtpaterno.Text);
                ec.materno = Seguridad.Encriptar(txtmaterno.Text);
                ec.nacimiento = Convert.ToDateTime(txtnacimiento.Text);
                ec.edad = Convert.ToInt32(txtedad.Text);
                ec.direccion = txtdireccion.Text;
                ec.telefono = txttelefono.Text;
                bu.registrar(ec);
                ScriptManager.RegisterStartupScript(btnregistrar, this.GetType(), "alert", "alert('El registro se genero correctamente');", true);
                Response.Redirect("Login.aspx");


            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        protected void txtnacimiento_TextChanged(object sender, EventArgs e)
        {
            try
            {
                EntitiesCaisa ed = new EntitiesCaisa();
                ed.nacimiento = Convert.ToDateTime(txtnacimiento.Text);
                ed.edad = DateTime.Today.Year - ed.nacimiento.Year;
                txtedad.Text = ed.edad.ToString();

            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
    }
}