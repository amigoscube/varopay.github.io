using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Varopay.Models;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.AspNet.Identity;
using Owin;
using System.IO;

namespace Varopay.Admin
{
    public partial class Account : System.Web.UI.Page
    {
       
        ApplicationDbContext db = new ApplicationDbContext();
        IdentityResult result = new IdentityResult();
        protected void Page_Load(object sender, EventArgs e)
        {
             
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (fupPartner.HasFile)
            {
                fupPartner.SaveAs(Server.MapPath("~/CertifiedPartnerImages/" + this.fupPartner.FileName));
                string fileName = Path.GetFileName(this.fupPartner.PostedFile.FileName);
                Session["ImagePath"] = "~/CertifiedPartnerImages/" + fileName;

                //var cr = db.CertifiedPartners.Find(txtPartnerName.Text);
                var partr = new CertifiedPartner()
                {
                    CertifiedPartnerID = Guid.NewGuid(),
                    PartnerName = txtPartnerName.Text,
                    WebsiteUrl = txtUrl.Text,
                    Description = txtDescription.Text,
                    ImageUrl = Session["ImagePath"].ToString()
                };

                db.CertifiedPartners.Add(partr);
                db.SaveChanges();

                ltrError.Text = "Certified Partner is Successfully Created";
            }
            else
            {
                ltrError.Text = "Please enter valid Details";
            }
        }
        protected void btnRemove_Click(object sender, EventArgs e)
        {            
           // var pnr = db.CertifiedPartners.Find(cp);
                CertifiedPartner cp = db.CertifiedPartners.Single(c => c.PartnerName == txtDeletePartner.Text);
                db.CertifiedPartners.Remove(cp);
                db.SaveChanges();
                ltrMessage.Text = "Successfully Deleted";
           
           // else
            //{
             //   ltrMessage.Text = result.Errors.FirstOrDefault();
            //}
        }

        protected void btnUnlock_Click(object sender, EventArgs e)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            ApplicationUser usr = manager.FindByEmail(txtUser.Text);
            if (usr != null && manager.IsLockedOut(usr.Id))
            {
                manager.ResetAccessFailedCount(usr.Id);
                manager.SetLockoutEndDate(usr.Id, DateTime.UtcNow.AddMinutes(3));
                manager.SendEmail(usr.Id, "Account Unlocked", "Dear " + usr.UserName + ",</br>Your Account has been Unlocked.You can Now Login to your VarPpay Account");
                ltrUnlocked.Text = "User has been Unlocked";
            }
            else
            {
              ltrUnlocked.Text=  result.Errors.FirstOrDefault();
            }
        }

        protected void btnDepAdmin_Click(object sender, EventArgs e)
        {

        }
    }
}