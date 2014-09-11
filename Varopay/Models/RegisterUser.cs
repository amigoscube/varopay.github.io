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
        
        [Display(Name="Username")]
        public String Username { get; set; }
       
        [Display(Name="Email")]
        [DataType(DataType.EmailAddress)]
        public String Email { get; set; }
        
        [Display(Name="Password")]
        [DataType(DataType.Password)]
        public String Password { get; set; }

        [Display(Name="ConfirmPassword")]
        [DataType(DataType.Password)]
        public String ConfirmPassword { get; set; }
    }
}