using DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Core
{
    public class Facade
    {
        public _DataAccess Conex;

        public Facade()
        {
            Conex = new _DataAccess();
        }

        #region Contact

        public Core.Table.Contact.Contact Contact()
        {
            return (new Core.Table.Contact.Contact(this));
        }

        #endregion Contact

        #region User

        public Core.Table.User.User User()
        {
            return (new Core.Table.User.User(this));
        }

        #endregion User
    }
}