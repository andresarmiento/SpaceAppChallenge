using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace WebConect
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IService1" in both code and config file together.
    [ServiceContract]
    public interface IService1
    {
        [OperationContract]
        bool ValidateUser(User Usuario);

        // TODO: Add your service operations here
    }

    // Use a data contract as illustrated in the sample below to add composite types to service operations.
    // You can add XSD files into the project. After building the project, you can directly use the data types defined there, with the namespace "WebConect.ContractType".
    [DataContract]
    public class User
    {
        private string _Password;

        private string _Users;

        [DataMember]
        public string Password
        {
            get { return _Password; }
            set { _Password = value; }
        }

        [DataMember]
        public string Users
        {
            get { return _Users; }
            set { _Users = value; }
        }
    }
}