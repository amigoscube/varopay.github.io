using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Claims;
using System.Security.Principal;
using System.Text;
using Varopay.Models;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using Varopay.Account;
using Microsoft.AspNet.Identity.EntityFramework;
using System.Net;
using System.Net.Mail;
using Microsoft.Owin.Security;

namespace Varopay
{
    public partial class SiteMaster : MasterPage
    {
        private const string AntiXsrfTokenKey = "__AntiXsrfToken";
        private const string AntiXsrfUserNameKey = "__AntiXsrfUserName";
        private string _antiXsrfTokenValue;
        protected void Page_Init(object sender, EventArgs e)
        {
            // The code below helps to protect against XSRF attacks
            var requestCookie = Request.Cookies[AntiXsrfTokenKey];
            Guid requestCookieGuidValue;
            if (requestCookie != null && Guid.TryParse(requestCookie.Value, out requestCookieGuidValue))
            {
                // Use the Anti-XSRF token from the cookie
                _antiXsrfTokenValue = requestCookie.Value;
                Page.ViewStateUserKey = _antiXsrfTokenValue;
            }
            else
            {
                // Generate a new Anti-XSRF token and save to the cookie
                _antiXsrfTokenValue = Guid.NewGuid().ToString("N");
                Page.ViewStateUserKey = _antiXsrfTokenValue;

                var responseCookie = new HttpCookie(AntiXsrfTokenKey)
                {
                    HttpOnly = true,
                    Value = _antiXsrfTokenValue
                };
                if (FormsAuthentication.RequireSSL && Request.IsSecureConnection)
                {
                    responseCookie.Secure = true;
                }
                Response.Cookies.Set(responseCookie);
            }

            Page.PreLoad += master_Page_PreLoad;
        }
        protected void master_Page_PreLoad(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Set Anti-XSRF token
                ViewState[AntiXsrfTokenKey] = Page.ViewStateUserKey;
                ViewState[AntiXsrfUserNameKey] = Context.User.Identity.Name ?? String.Empty;
            }
            else
            {
                // Validate the Anti-XSRF token
                if ((string)ViewState[AntiXsrfTokenKey] != _antiXsrfTokenValue
                    || (string)ViewState[AntiXsrfUserNameKey] != (Context.User.Identity.Name ?? String.Empty))
                {
                    throw new InvalidOperationException("Validation of Anti-XSRF token failed.");
                }
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                btnRegister.Enabled = false;
                FillCaptcha();
            }
        }
        protected void Unnamed_LoggingOut(object sender, LoginCancelEventArgs e)
        {
            Context.GetOwinContext().Authentication.SignOut();
        }
        protected void FillCaptcha()
        {
            try
            {
                Random random = new Random();
                string combination = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
                StringBuilder captcha = new StringBuilder();
                for (int i = 0; i < 6; i++)
                    captcha.Append(combination[random.Next(combination.Length)]);
                this.Session["captcha"] = captcha.ToString();
                imgCaptcha.ImageUrl = "GenerateCaptcha.aspx?" + DateTime.Now.Ticks.ToString();
            }
            catch
            {
                throw;
            }
        }
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string st = Convert.ToString(this.Session["captcha"]);
            if(st!=this.txtCaptcha.Text)
            {
                lblCaptcha.Text = "Invalid Captcha";
            }
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var user = new ApplicationUser() { UserName = txtRegisterUsername.Text, Email = txtRegisterEmail.Text, PhoneNumber = txtPhoneNumber.Text, City = txtRegisterCity.Text, Address = txtRegisterAddress.Text,Country = ddlCountry.SelectedValue.ToString(),Zipcode=txtZipcode.Text };
            IdentityResult result = manager.Create(user, txtRegisterPassword.Text);
            string role = "User";
            var RoleManager = new RoleManager<IdentityRole>(new RoleStore<IdentityRole>());
            if (!RoleManager.RoleExists(role))
            {
                var userrole = RoleManager.Create(new IdentityRole(role));
            }

            if (result.Succeeded)
            {
                var roleresult = manager.AddToRole(user.Id, role);
                IdentityHelper.SendConfirmationMail(user.Id,Context,Request);
                var cur = new Varopay.Models.Currency();
                foreach (CurrencyName c in Enum.GetValues(typeof(CurrencyName)))
                {
                    IdentityHelper.createAccount(user.Id, c);
                }
                Response.Redirect("~/Registered.aspx");
            }
            else
            {
                ltrError.Text = result.Errors.FirstOrDefault();
            }
        }
        protected void btnRefresh_Click(object sender, EventArgs e)
        {
            FillCaptcha();
        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();

            TextBox username;
            TextBox pwd;
            var ErrorMessage = (PlaceHolder)LoginView1.FindControl("ErrorMessage");
            var FailureText = (Literal)LoginView1.FindControl("FailureText");
            username = (TextBox)LoginView1.FindControl("txtUsername");
            pwd = (TextBox)LoginView1.FindControl("txtPassword");
            ApplicationUser user = manager.Find(username.Text, pwd.Text);
            if (user != null && user.EmailConfirmed == true && manager.SupportsUserLockout && manager.GetAccessFailedCount(user.Id)>0 )
            {
                string verify = manager.GenerateTwoFactorToken(user.Id, "EmailCode");
                manager.SendEmail(user.Id, "Verification Code", "Your Verification code is:" + verify + "");
                SetTwoFactorAuthCookie(user.Id);
                manager.ResetAccessFailedCount(user.Id);
                Response.Redirect("~/Verfication.aspx");
            }
            else if(user!=null && user.EmailConfirmed==false)
            {
                SetTwoFactorAuthCookie(user.Id);
                Response.Redirect("~/NotConfirmed.aspx");
            }
            //else if (user != null)
            //{
            //    Response.Redirect("~/Account/Forgot.aspx");
            //}
            else if(user!=null && manager.SupportsUserLockout && manager.GetLockoutEnabled(user.Id))
            {
                //FailureText.Text = "Invalid username or password.";
                //ErrorMessage.Visible = true;
                manager.AccessFailed(user.Id);
                Response.Redirect("~/Account/Forgot.aspx");
            }
        }
        private void SetTwoFactorAuthCookie(string userId)
        {
            ClaimsIdentity identity = new ClaimsIdentity(DefaultAuthenticationTypes.TwoFactorCookie);
            identity.AddClaim(new Claim(ClaimTypes.NameIdentifier, userId));

            IAuthenticationManager authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            authenticationManager.SignOut(DefaultAuthenticationTypes.ExternalCookie);
            authenticationManager.SignIn(identity);
        }     
    }
}


