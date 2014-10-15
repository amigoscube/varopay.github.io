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
        public virtual IEnumerable<ApplicationUser> MyAccount { get; set; }
        public virtual List<Currency> Currency { get; set; }
    }  
}