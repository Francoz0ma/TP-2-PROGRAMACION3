using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Trabajo_practico_2
{
    public partial class tp2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

            

            if (IsPostBack == false)
            {
                
                ListItem estandar = new ListItem();
                estandar.Text = "--Seleccionar localidad--";
                
                ddlLocalidades.Items.Add(estandar);
                
          
            }           

        }
              
               
        protected void btnGuardarLocalidad_Click(object sender, EventArgs e)
        {
            bool validar = true;

            for (int i = 1; i < ddlLocalidades.Items.Count; i++)
            {
                if (ddlLocalidades.Items[i].Text.Contains(txtLocalidad.Text) == true)
                {
                    validar = false;
                    i = ddlLocalidades.Items.Count;
                }
                
            }
            if (validar == true)
            {
                ListItem ingreso = new ListItem();
                ingreso.Text = txtLocalidad.Text;

                ddlLocalidades.Items.Add(ingreso);
            }

            txtLocalidad.Text = "";
           
        }

        protected void txtContraseña_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnInicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inicio.aspx");
        }

        protected void btnGuardarUsuario_Click(object sender, EventArgs e)
        {
            lblBienvenido.Text = "Bienvenido Usuario " + txtNombreUsuario.Text;
            txtNombreUsuario.Text = "";
            txtCorreoElectronico.Text = "";
            txtCP.Text = "";
            
            

            
        }
    }
}