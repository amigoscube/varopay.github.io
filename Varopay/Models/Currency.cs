using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Varopay.Models
{
    public class Currency
    {
        [ScaffoldColumn(false)]
        public string CurrencyID { get; set; }
        public string Currency { get; set; }
        public virtual Account Currency{ get; set; }
    }
}