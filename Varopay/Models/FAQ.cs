using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace Varopay.Models
{
    public class FAQ
    {
        [Key,DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int FAQId { get; set; }

        [DataType(DataType.MultilineText)]
        public String Question { get; set; }

        [DataType(DataType.MultilineText)]
        public String Answer { get; set; }
        public String Status { get; set; }
    }
}