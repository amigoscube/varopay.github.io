using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Owin;
using Microsoft.AspNet.Identity.Owin;
using Varopay.Models;
using Microsoft.AspNet.Identity;
using Owin;
using Varopay.Account;
using Microsoft.AspNet.Identity.EntityFramework;
using System.Net;
using System.Net.Mail;
using Microsoft.Owin.Security;
using System.Threading.Tasks;



namespace Varopay
{
    public partial class NotConfirmed : System.Web.UI.Page
    {
        protected async void Page_Load(object sender, EventArgs e)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            string UserId = await GetTwoFactorUserId();
            var user = manager.FindById(UserId);
            lblEmailId.Text = user.Email;
        }

        protected async void BtnSendMail_Click(object sender, EventArgs e)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            string userId = await GetTwoFactorUserId();
            IdentityHelper.SendConfirmationMail(userId, Context, Request);
            lblMessage.Text = "Confirmation mail has been sent your mail.Please Confirm your mail to log in to varopay ";
        }
        private IAuthenticationManager AuthenticationManager
        {
            get
            {
                return Context.GetOwinContext().Authentication;
            }
        }
        private async Task<String> GetTwoFactorUserId()
        {
            var result = await AuthenticationManager.AuthenticateAsync(DefaultAuthenticationTypes.TwoFactorCookie);

            if (result != null && result.Identity != null && !string.IsNullOrEmpty(result.Identity.GetUserId()))
            {
                return result.Identity.GetUserId();
            }
            return null;
        }
    }
}