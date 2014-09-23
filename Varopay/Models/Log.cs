using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Varopay.Models
{
    public class Log
    {
        public Guid LogID { get; set; }

        [DataType(DataType.DateTime)]
        public string Date { get; set; }
        public string Activity { get; set; }

        [DataType(DataType.Currency)]
        public string Amount { get; set; }

        public String Details{ get; set; }
        public String Object { get; set; }
        public virtual ApplicationUser UserLog { get; set; }
    }
}