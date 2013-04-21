using DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Core.Table.Contact
{
    public class Contact
    {
        public Facade Facade;

        public Contact(Facade Fac)
        {
            Facade = Fac;
        }

        public string InsertContact(DataAccess.TB_CONTACTO contact)
        {
            int? IdConacto = 0;
            Facade.Conex._DataQuery.InsertContact(contact.Nombre, contact.Apellido, contact.Correo, ref IdConacto);
            return IdConacto.ToString();
        }

        public bool InserUser(string IdContacto, string Nombre, string Password)
        {
            try
            {
                Facade.Conex._DataQuery.InsertUser(IdContacto, Nombre, Password);
                return true;
            }
            catch
            {
                return false;
            }
        }
    }
}