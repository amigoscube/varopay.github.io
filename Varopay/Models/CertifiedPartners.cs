using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Varopay.Models
{
    public class CertifiedPartner
    {
        public Guid CertifiedPartnerID{ get; set; }
        public String PartnerName { get; set; }

        [DataType(DataType.Url)]
        public String WebsiteUrl { get; set; }

        [DataType(DataType.ImageUrl)]
        public String ImageUrl{ get; set; }
        public String Description { get; set; }
        public String Status { get; set; }
    }
}