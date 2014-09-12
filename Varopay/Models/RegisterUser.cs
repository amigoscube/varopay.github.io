using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Varopay.Models
{
    public class RegisterUser
    {
        [ScaffoldColumn(false)]
        public int RegisterUserID { get; set; }
        
        public String Username { get; set; }
       
        [DataType(DataType.EmailAddress)]
        public String Email { get; set; }
        
        [DataType(DataType.Password)]
        public String Password { get; set; }

        [DataType(DataType.Password)]
        public String ConfirmPassword { get; set; }
    }
}