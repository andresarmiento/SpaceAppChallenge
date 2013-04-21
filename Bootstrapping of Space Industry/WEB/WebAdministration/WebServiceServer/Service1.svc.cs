using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace WebServiceServer
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service1" in both code and config file together.
    public class Service1 : IService1
    {
        public bool ValidateUser(User Usuario)
        {
            Core.Facade Fachada = new Core.Facade();
            DataAccess.TB_USUARIO UserVAlidate = Fachada.User().GetUserValidator(Usuario.Users, Usuario.Password);
            if (UserVAlidate != null)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}