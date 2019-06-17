using BusinessCaisa;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Login : System.Web.UI.Page
    {
        BusUsuario bu = new BusUsuario();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
               
            }
        }

        protected void btniniciosesion_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtusuario.Text != "")
                {
                    if (txtcontrasena.Text != "")
                    {
                        var validlogin = bu.login(txtusuario.Text, txtcontrasena.Text);
                        if (validlogin)
                        {
                            Response.Redirect("MenuPrincipal.aspx");
                        }
                        else
                        {
                            msgerror("Nombre de usuario o contraseña incorrecta");
                            txtcontrasena.Text = "";
                            txtusuario.Text = "";
                            txtusuario.Focus();
                        }
                    }
                    else
                    {
                        msgerror("Escribir Contraseña");
                    }
                }
                else
                {
                    msgerror("Escribir Usuario");
                }


            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
        private void msgerror(string msj)
        {
            lblerror.Text = msj;
            lblerror.Visible = true;
        }

        protected void btnregistrarse_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registro.aspx");
        }
    }
}