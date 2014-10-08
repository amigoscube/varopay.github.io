using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Varopay.Models
{
    public class Payees
    {
        public Guid PayeesID { get; set; }
        public string Payee { get; set; }
        public string Payer { get; set; }
        public virtual Accounts Payment { get; set; }
    }
}