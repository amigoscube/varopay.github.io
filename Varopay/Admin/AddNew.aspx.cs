using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Varopay.Models;
using Owin;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.AspNet.Identity.EntityFramework;

namespace Varopay.Admin
{
    public partial class AddNew : System.Web.UI.Page
    {
        ApplicationDbContext db = new ApplicationDbContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var user = new ApplicationUser() { UserName = txtRegisterUsername.Text, Email = txtRegisterEmail.Text, PhoneNumber = txtPhoneNumber.Text, City = txtRegisterCity.Text, Address = txtRegisterAddress.Text, Country = ddlCountry.SelectedValue.ToString(), Zipcode = txtZipcode.Text, Status = "Active" };
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
                IdentityHelper.SendConfirmationMail(user.Id, Context, Request);
                var cur = new Varopay.Models.Currency();
                foreach (CurrencyName c in Enum.GetValues(typeof(CurrencyName)))
                {
                    IdentityHelper.createAccount(user.Id, c);
                }
                lblMessage.Text = "User has been created";
            }
            else 
            {
                lblMessage.Text = result.Errors.FirstOrDefault();
            }
        }
    }
}