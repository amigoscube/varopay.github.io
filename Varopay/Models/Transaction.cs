using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace Varopay.Models
{
    public class Transaction
    {
        public Guid TransactionID{ get; set; }

        [DataType(DataType.DateTime)]
        public string Date { get; set; }
        public string Amount{ get; set; }
        public string Status { get; set; }
        public string Type { get; set; }
        public virtual Accounts AccountTransaction { get; set; }
        public virtual TransactionType TransactionType { get; set; }

    }
}