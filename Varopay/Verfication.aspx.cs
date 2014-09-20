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
using Varopay.Models;
using System.Threading.Tasks;

namespace Varopay
{
    public partial class Verfication : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected async void btnSubmit_Click(object sender, EventArgs e)
        {
          await Verify(txtVerificationCode.Text);
        }

        //private HttpContextBase HttpContext {
        //    get {
        //        return HttpContext;
        //    }
        //}
        private IAuthenticationManager AuthenticationManager {
            get
            {               
                return Context.GetOwinContext().Authentication;
            }
        }
        private async Task<String> GetTwoFactorUserId()
        {            
            var result = await AuthenticationManager.AuthenticateAsync(DefaultAuthenticationTypes.TwoFactorCookie);

            if (result != null && result.Identity != null && !string.IsNullOrEmpty(result.Identity.GetUserId())) {
                return result.Identity.GetUserId();
            }
            return null;
        }

        public async Task Verify(string pin) {
            string userid = await GetTwoFactorUserId();

            if(userid == null || string.IsNullOrEmpty(pin))
            {
                Response.Redirect("~/Error.aspx");
            }
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var user = await manager.FindByIdAsync(userid);
            if (manager.VerifyTwoFactorToken(user.Id, "EmailCode", pin))
            {
                IdentityHelper.SignIn(manager, user, isPersistent: false);
                IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
            }
            else
            {
               
            }
        }
    }
}