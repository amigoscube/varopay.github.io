using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Varopay.Models;
using System.Web.Security;

namespace Varopay.Admin
{
    public partial class AdminMaster : System.Web.UI.MasterPage
    {
        ApplicationDbContext db = new ApplicationDbContext();
        IdentityResult result = new IdentityResult();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.UrlReferrer == null || string.IsNullOrEmpty(Request.UrlReferrer.AbsolutePath))
            {
                Session.Abandon();
                FormsAuthentication.SignOut();
                FormsAuthentication.RedirectToLoginPage();
            }
            if (!IsPostBack)
            {
                var user = Context.User.Identity.GetUserId();
                var act = db.Account.Single(a => a.MyAccount.Id == user).AccountsID;
                Accounts ac = db.Account.Find(act);
                lblBalance.Text = "$" + ac.Amount.ToString();
            }
            
        }
        protected void Unnamed_LoggingOut(object sender, LoginCancelEventArgs e)
        {
            Context.GetOwinContext().Authentication.SignOut();
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (fupPartner.HasFile)
            {
                fupPartner.SaveAs(Server.MapPath("~/CertifiedPartnerImages/" + this.fupPartner.FileName));
                string fileName = Path.GetFileName(this.fupPartner.PostedFile.FileName);
                Session["ImagePath"] = "~/CertifiedPartnerImages/" + fileName;
                CreatePartner(txtPartnerName.Text, txtUrl.Text, txtDescription.Text, Session["ImagePath"].ToString());
                ltrError.Text = "Certified Partner is Successfully Created";
            }
            else
            {
                ltrError.Text = "Please enter valid Details";
            }
        }
        private void CreatePartner(string PartnrName,string Url,string Description,string imageUrl)
        {
            var partr = new CertifiedPartner()
            {
                CertifiedPartnerID = Guid.NewGuid(),
                PartnerName = PartnrName,
                WebsiteUrl = Url,
                Description = Description,
                ImageUrl = imageUrl
            };

            db.CertifiedPartners.Add(partr);
            db.SaveChanges();

        }
        protected void btnRemove_Click(object sender, EventArgs e)
        {
            DeletePartner(txtDeletePartner.Text);
        }
        private void DeletePartner(string Partner)
        {
            CertifiedPartner cp = db.CertifiedPartners.Single(c => c.PartnerName == Partner);
            db.CertifiedPartners.Remove(cp);
            db.SaveChanges();
            ltrMessage.Text = "Successfully Deleted";
        }

        protected void btnUnlock_Click(object sender, EventArgs e)
        {
            UnlockUser(txtUser.Text);
        }

        private void UnlockUser(string user)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            ApplicationUser usr = manager.FindByEmail(user);
            if (usr != null && manager.IsLockedOut(usr.Id))
            {
                manager.ResetAccessFailedCount(usr.Id);
                manager.SetLockoutEndDate(usr.Id, DateTime.UtcNow.AddMinutes(3));
                manager.SendEmail(usr.Id, "Account Unlocked", "Dear " + usr.UserName + ",</br>Your Account has been Unlocked.You can Now Login to your VarPpay Account");
                ltrUnlocked.Text = "User has been Unlocked";
            }
            else
            {
                ltrUnlocked.Text = result.Errors.FirstOrDefault();
            }
 
        }
        protected void btnDepAdmin_Click(object sender, EventArgs e)
        {

        }
    }
}