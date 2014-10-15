using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Owin;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity.Owin;
using Varopay.Models;
using Microsoft.AspNet.Identity;

namespace Varopay.User
{
    public partial class PasswordSettings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var user = Context.User.Identity.GetUserId();
            IdentityResult result = manager.ChangePassword(user,txtCurPassword.Text,txtNewPassword.Text);
            if(result.Succeeded)
            {
                lblChgPwd.Text= "Your Password is successfully changed";
            }
            else
            {
                lblChgPwd.Text="Please  enter correct password";
            }
            }
        }
    }
