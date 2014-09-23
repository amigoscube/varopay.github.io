using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Varopay.Models
{
    public class TransactionType
    {
        public Guid TransactionTypeId { get; set; }
        public String TransactionName  { get; set; }
    }
}