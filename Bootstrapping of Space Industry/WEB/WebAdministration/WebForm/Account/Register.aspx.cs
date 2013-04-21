using Core;
using DataAccess;
using Microsoft.AspNet.Membership.OpenAuth;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForm.Account
{
    public partial class Register : Page
    {
        public Core.Facade Fachada;

        protected void BtnRegister_Click(object sender, EventArgs e)
        {
            DataAccess.TB_CONTACTO Contacto = new TB_CONTACTO();

            Contacto.Nombre = txtName.Text;
            Contacto.Apellido = txtsurname.Text;
            Contacto.Correo = Email.Text;

            string IdContacto = Fachada.Contact().InsertContact(Contacto);

            Fachada.Contact().InserUser(IdContacto, UserName.Text, Password.Text);
            Response.Redirect("Login.aspx");
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            Fachada = new Core.Facade();
        }
    }
}