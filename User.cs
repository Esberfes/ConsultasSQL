using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml;

namespace ConsultasSQL
{

    public class User
    {
        private string userName;
        private string userPassword;
        private string dataBaseName;
        private string url;

        public string UserName { get => userName; set => userName = value; }
        public string UserPassword { get => userPassword; set => userPassword = value; }
        public string DataBaseName { get => dataBaseName; set => dataBaseName = value; }
        public string Url { get => url; set => url = value; }
    }
}
