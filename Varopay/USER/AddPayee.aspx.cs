using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Owin;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity.Owin;
using Varopay.Models;

namespace Varopay.User
{
    public partial class Payee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //ddlPayeeAccount.DataSource = Enum.GetNames(typeof(CurrencyName));
            //ddlPayeeAccount.DataBind();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            AddPayee();
        }
        private void AddPayee()
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var payer = Context.User.Identity.GetUserId();
            ApplicationDbContext db = new ApplicationDbContext();
           var payees = from p in db.Payees
                                  where p.Payer == payer
                                  select p.Payee;
            List<string> pays = payees.ToList();
            ApplicationUser user = manager.FindByName(txtPayee.Text);
            if(pays.Contains(user.Id))
            {
                lblMsg.Text = txtPayee.Text+" already exists in your payee list";
            }
            else if (user != null && user.EmailConfirmed && user.Status=="Active")
            {
                IdentityHelper.createPayee(user.Id, payer, txtPayeeAccount.Text);
                IdentityHelper.LogActivity("Payee Addded", true, Request,payer);
                Response.Redirect("~/User/PayeeList.aspx");
            }
            else
            {
                lblMsg.Text = "User " + txtPayee.Text + " does not exist";
            }
        }
    }
}