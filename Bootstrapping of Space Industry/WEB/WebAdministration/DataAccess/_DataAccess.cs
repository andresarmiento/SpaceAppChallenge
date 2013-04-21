using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess
{
    public class _DataAccess
    {
        public DataAccessDataContext _DataQuery;

        public _DataAccess()
        {
            _DataQuery = new DataAccessDataContext();
        }
    }
}