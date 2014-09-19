using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using Microsoft.AspNet.Identity;
using Microsoft.Owin.Security;
using Microsoft.Owin;
using Microsoft.AspNet.Identity.Owin;

namespace Varopay
{
    public partial class Verfication : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            

        }
        private void GetTwoFactorUserId()
        {
            //IAuthenticationManager authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            //var result = authenticationManager.AuthenticateAsync(DefaultAuthenticationTypes.TwoFactorCookie);

            //if ((result != null) && (result.Id != null) && String.IsNullOrEmpty(result.GetUserId()))
            //{

            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
        }

    }
}