using System;
using System.Security.Claims;
using System.Threading.Tasks;
using System.Web;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.Owin.Security;
using Owin;
using Varopay.Models;
using System.Data.Entity;
using System.Collections.Generic;
using System.Linq;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Security.Principal;
using System.Text;
using System.Net.Http;
using System.Net.Http.Headers;


namespace Varopay.Models
{
    // You can add User data for the user by adding more properties to your User class, please visit http://go.microsoft.com/fwlink/?LinkID=317594 to learn more.
    public class ApplicationUser : IdentityUser
    {
        public string City { get; set; }
        public string Zipcode { get; set; }
        public string Country { get; set; }
        public string Address { get; set; }
        public string AccountType { get; set; }
        public Task<ClaimsIdentity> GenerateUserIdentityAsync(ApplicationUserManager manager)
        {
            return Task.FromResult(GenerateUserIdentity(manager));
        }

        public ClaimsIdentity GenerateUserIdentity(ApplicationUserManager manager)
        {
            // Note the authenticationType must match the one defined in CookieAuthenticationOptions.AuthenticationType
            var userIdentity = manager.CreateIdentity(this, DefaultAuthenticationTypes.ApplicationCookie);
            // Add custom user claims here
            return userIdentity;
        }
    }

    public class ApplicationDbContext : IdentityDbContext<ApplicationUser>
    {
        public ApplicationDbContext()
            : base("DefaultConnection", throwIfV1Schema: false)
        {
        }
        public DbSet<Account> Account { get; set; }
        public DbSet<Currency> Currencies { get; set; }
        public DbSet<Log> Logs { get; set; }
        public DbSet<Payees> Payees { get; set; }
        public DbSet<Transaction> Transactions { get; set; }
        public DbSet<TransactionType> TransactionTypes { get; set; }
        public static ApplicationDbContext Create()
        {
            return new ApplicationDbContext();
        }

        //public System.Data.Entity.DbSet<Varopay.Models.ApplicationUser> ApplicationUsers { get; set; }
       

    }
}

#region Helpers
namespace Varopay
{
    public static class IdentityHelper
    {
        // Used for XSRF when linking external logins
        public const string XsrfKey = "XsrfId";

        public static void SignIn(ApplicationUserManager manager, ApplicationUser user, bool isPersistent)
        {
            IAuthenticationManager authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            authenticationManager.SignOut(DefaultAuthenticationTypes.ExternalCookie);
            var identity = manager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
            authenticationManager.SignIn(new AuthenticationProperties() { IsPersistent = isPersistent }, identity);
        }

        public const string ProviderNameKey = "providerName";
        public static string GetProviderNameFromRequest(HttpRequest request)
        {
            return request.QueryString[ProviderNameKey];
        }

        public const string CodeKey = "code";
        public static string GetCodeFromRequest(HttpRequest request)
        {
            return request.QueryString[CodeKey];
        }

        public const string UserIdKey = "userId";
        public static string GetUserIdFromRequest(HttpRequest request)
        {
            return HttpUtility.UrlDecode(request.QueryString[UserIdKey]);
        }

        public static string GetResetPasswordRedirectUrl(string code)
        {
            return "/Account/ResetPassword?" + CodeKey + "=" + HttpUtility.UrlEncode(code);
        }

        public static string GetUserConfirmationRedirectUrl(string code, string userId)
        {
            return "Account/Confirm?" + CodeKey + "=" + HttpUtility.UrlEncode(code) + "&" + UserIdKey + "=" + HttpUtility.UrlEncode(userId);
        }

        private static bool IsLocalUrl(string url)
        {
            return !string.IsNullOrEmpty(url) && ((url[0] == '/' && (url.Length == 1 || (url[1] != '/' && url[1] != '\\'))) || (url.Length > 1 && url[0] == '~' && url[1] == '/'));
        }

        public static void RedirectToReturnUrl(string returnUrl, HttpResponse response)
        {
            if (!String.IsNullOrEmpty(returnUrl) && IsLocalUrl(returnUrl))
            {
                response.Redirect(returnUrl);
            }
            else
            {
                response.Redirect("~/",false);
            }
        }
        /// <summary>
        /// Sends Confirmation mail to the user
        /// </summary>
        /// <param name="UserID">User's Id</param>
        /// <param name="Context">Http Context</param>
        /// <param name="Request">Http Request</param>
        public static void SendConfirmationMail(string UserID,HttpContext Context,HttpRequest Request)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            string code = manager.GenerateEmailConfirmationToken(UserID);
            string callbackUrl = IdentityHelper.GetUserConfirmationRedirectUrl(code, UserID);
            manager.SendEmail(UserID, "Confirm your account", "Please confirm your account by clicking <a href=\"" + Request.Url.AbsoluteUri.Replace("default.aspx", callbackUrl) + "\">here</a>.");
        }
            /// <summary>
        /// create Account Creates a Default Account whenever an Account is Created
        /// </summary>
        /// <param name="currency">Default Currency</param>
        /// <param name="UserId">User Id of the User</param>
        public static void createAccount(string UserId, CurrencyName c)
        {
            ApplicationDbContext db = new ApplicationDbContext();
            var cId = db.Currencies.Single(s => s.CurrencyName == c.ToString()).CurrencyID;
            var Id = db.Users.Single(u => u.Id == UserId).Id;
            Currency cur = db.Currencies.Find(cId);
            ApplicationUser us = db.Users.Find(Id);
            Varopay.Models.Account ac = new Varopay.Models.Account();
            ac.AccountID = Guid.NewGuid();
            ac.MyAccount = us;
            ac.Currency = cur;
            ac.CurAcc = IdentityHelper.CreateId(c);
            db.Account.Add(ac);
            db.SaveChanges();
        }
        /// <summary>
        ///Create Payee Adds Payee to the User
        /// </summary>
        /// <param name="Payee">Payee Name</param>
        /// <param name="Payer">User Name</param>
        /// <param name="c">Id of the User Account</param>
        public static void createPayee(string Payee,string Payer,String cuac)
        {
            ApplicationDbContext db = new ApplicationDbContext();
            var Id = db.Users.Single(u => u.Id == Payee).Id;
            var aId = db.Account.Single(a => (a.CurAcc==cuac)).AccountID;
            Varopay.Models.Account acc = db.Account.Find(aId);
            Varopay.Models.Payees pay = new Varopay.Models.Payees();
            pay.PayeesID = Guid.NewGuid();
            pay.Payee = Payee;
            pay.Payer = Payer;
            pay.Payment = acc;

            db.Payees.Add(pay);
            db.SaveChanges();
        }
        public static string CreateId(CurrencyName cur)
        {
            Random random = new Random();
            string num = "0123456789";
            String st = cur.ToString(); 
            StringBuilder ID = new StringBuilder();
            for (int i = 0; i < 7; i++)
            {
                    ID.Append(num[random.Next(num.Length)]);
            }
            string s = st.FirstOrDefault() + ID.ToString();
            return s ;
        }
    }
}
#endregion
