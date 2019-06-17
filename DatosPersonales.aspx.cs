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
    public partial class DatosPersonales : System.Web.UI.Page
    {
        BusUsuario bu = new BusUsuario();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                mostrardatospersonales();
            }
        }
        public void mostrardatospersonales()
        {
            try
            {
                gvdatospersonales.DataSource = bu.mostrardatos();
                gvdatospersonales.DataBind();
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        protected void gvdatospersonales_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvdatospersonales.EditIndex = e.NewEditIndex;
            mostrardatospersonales();
        }

        protected void gvdatospersonales_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                EntitiesCaisa ec = new EntitiesCaisa();

                TextBox ema = (TextBox)gvdatospersonales.Rows[e.RowIndex].FindControl("txtemail");
                TextBox nom = (TextBox)gvdatospersonales.Rows[e.RowIndex].FindControl("txtnombre");
                TextBox pat = (TextBox)gvdatospersonales.Rows[e.RowIndex].FindControl("txtpaterno");
                TextBox mat = (TextBox)gvdatospersonales.Rows[e.RowIndex].FindControl("txtmaterno");
                TextBox fechaa = (TextBox)gvdatospersonales.Rows[e.RowIndex].FindControl("txtnacimiento");
                TextBox edad = (TextBox)gvdatospersonales.Rows[e.RowIndex].FindControl("txtedad");
                TextBox dir = (TextBox)gvdatospersonales.Rows[e.RowIndex].FindControl("txtdireccion");
                TextBox tel = (TextBox)gvdatospersonales.Rows[e.RowIndex].FindControl("txttelefono");



                ec.email = ema.Text;
                ec.nombre = nom.Text;
                ec.paterno = pat.Text;
                ec.materno = mat.Text;
                ec.nacimiento = Convert.ToDateTime(fechaa.Text);
                ec.edad = Convert.ToInt32(edad.Text);
                ec.direccion = dir.Text;
                ec.telefono = tel.Text;


                bu.actualizadatos(ec);
                gvdatospersonales.EditIndex = -1;
                mostrardatospersonales();
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        protected void gvdatospersonales_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvdatospersonales.EditIndex = -1;
            mostrardatospersonales();
        }

        protected void gvdatospersonales_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                var usuario = LoginCache.usuario;
                var eliminar = bu.eliminardatos(usuario);
                Response.Redirect("login.aspx");
                mostrardatospersonales();
            }
            catch (Exception)
            {

                throw;
            }
        }

       
    }
}