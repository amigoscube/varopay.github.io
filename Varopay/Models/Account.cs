using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Varopay.Models
{
    public class Accounts
    {
        public Guid AccountsID { get; set; }
        public String CurAcc { get; set; }

        [DataType(DataType.Currency)]
        public Double Amount { get; set; }
        public virtual ApplicationUser MyAccount { get; set; }
        public virtual Currency Currency { get; set; }
    }  
}