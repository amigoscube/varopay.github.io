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
               Session["captcha"] = captcha.ToString();
               imgCaptcha.ImageUrl = "GenerateCaptcha.aspx?" + DateTime.Now.Ticks.ToString();
            }
            catch
            {
                throw;
            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
                var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
                var user = new ApplicationUser() { UserName = txtRegisterUsername.Text, Email = txtRegisterEmail.Text };
                IdentityResult result = manager.Create(user, txtRegisterPassword.Text);
                string role = "User";
                var RoleManager = new RoleManager<IdentityRole>(new RoleStore<IdentityRole>());
                if (!RoleManager.RoleExists(role))
                {
                    var userrole = RoleManager.Create(new IdentityRole(role));
                }

                if (result.Succeeded)
                {
                    //string activationcode = Guid.NewGuid().ToString();
                    //var roleresult = manager.AddToRole(user.Id, role);
                    //SmtpClient client = new SmtpClient();
                    //client.EnableSsl = true;
                    //client.Host = "smtp.gmail.com";
                    //client.Port = 587;
                    //client.UseDefaultCredentials = false;
                    //client.Credentials = new NetworkCredential("divya.kandhadi@amigoscube.com", "tejaramm@1");
                    //MailMessage msg = new MailMessage();
                    //msg.To.Add(new MailAddress(txtRegisterEmail.Text));
                    //msg.From = new MailAddress("divya.kandhadi@amigoscube.com");
                    //string body = "Hello" + txtRegisterUsername.Text.Trim();
                    //body += "<br/><br/> Please click the following link to activate your account";
                    //body += "<br/><a href='" + Request.Url.AbsoluteUri.Replace("defualt.aspx", "Login.aspx?ActivationCode="+activationcode) + "'></a>";
                    //msg.Body = body;
                    //msg.Subject = "Confirmation Mail";
                    //msg.Priority = MailPriority.Normal;
                    //client.Send(msg);
                    //Response.Write("Please check your mail");
                   // IdentityHelper.SignIn(manager, user, isPersistent: false);

                    // For more information on how to enable account confirmation and password reset please visit http://go.microsoft.com/fwlink/?LinkID=320771
                   string code = manager.GenerateEmailConfirmationToken(user.Id);
                   string callbackUrl = IdentityHelper.GetUserConfirmationRedirectUrl(code, user.Id);
                   manager.SendEmail(user.Id, "Confirm your account", "Please confirm your account by clicking <a href=\"" + callbackUrl + "\">here</a>.");
                  //  IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
                }
                else
                {
                    //ErrorMessage.Text = result.Errors.FirstOrDefault();
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
            if (user != null&& user.EmailConfirmed)
            {
                string sessionId;
                sessionId = Context.Session.SessionID;
                Session["username"] = username.Text;
                Session["pwd"] = pwd.Text;
                IdentityHelper.SignIn(manager, user, isPersistent:false);
                IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
            }
                else
                {
                    FailureText.Text = "Invalid username or password.";
                    ErrorMessage.Visible = true;
                }
            }
        }
    }


