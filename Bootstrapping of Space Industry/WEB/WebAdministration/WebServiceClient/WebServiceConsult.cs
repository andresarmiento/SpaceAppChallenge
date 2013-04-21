using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WebServiceClient;

namespace WebServiceClient
{
    public class WebServiceConsult
    {
        public WebServiceClient.WebServiceConsult WebService;

        public WebServiceConsult()
        {
            WebService = new WebServiceConsult();
        }

        public bool ValidateUser(string User, string Password)
        {
            return WebService.ValidateUser(User, Password);
        }
    }
}