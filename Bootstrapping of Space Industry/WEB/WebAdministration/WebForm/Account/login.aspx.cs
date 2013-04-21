using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForm.Account
{
    public partial class login : System.Web.UI.Page
    {
        private Core.Facade Fachada;

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            DataAccess.TB_USUARIO USer = new DataAccess.TB_USUARIO();
            USer = Fachada.User().GetUserValidator(txtUserName.Text, txtPassword.Text);
            if (USer != null)
            {
                Response.Write("<script>alert('Validado correctamente');</script>");
            }
            else
            {
                Response.Write("<script>alert('Usuario no registrado');</script>");
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            Fachada = new Core.Facade();
        }
    }
}