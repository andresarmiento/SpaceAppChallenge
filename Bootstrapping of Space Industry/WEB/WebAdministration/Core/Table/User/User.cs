using DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace Core.Table.User
{
    public class User
    {
        public Facade Facade;

        public User(Facade Fac)
        {
            Facade = Fac;
        }

        public DataAccess.TB_USUARIO GetUserValidator(string Username, string Password)
        {
            try
            {
                return Facade.Conex._DataQuery.GetUser(Username, Password).FirstOrDefault();
            }
            catch
            {
                return null;
            }
        }
    }
}