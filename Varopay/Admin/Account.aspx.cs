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
            if (this.fupPartner.HasFile)
            {
                fupPartner.SaveAs(Server.MapPath("~/CertifiedPartnerImages/"+this.fupPartner.FileName));
                string fileName = Path.GetFileName(this.fupPartner.PostedFile.FileName);
                 Session["ImagePath"] = "~/CertifiedPartnerImages/"+fileName;
            }
            //CertifiedPartner cr = db.CertifiedPartners.Find(txtPartnerName.Text);
            var partr = new CertifiedPartner() { 
                CertifiedPartnerID  = Guid.NewGuid(),
                PartnerName = txtPartnerName.Text,
                WebsiteUrl = txtUrl.Text,
                Description = txtDescription.Text,
                ImageUrl = Session["ImagePath"].ToString()
            };
                
            db.CertifiedPartners.Add(partr);
            db.SaveChanges();

            ltrError.Text = "Certified Partner is Successfully Created";
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
    }
}