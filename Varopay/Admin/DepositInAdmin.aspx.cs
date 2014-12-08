using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Varopay.Models;
using Owin;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.Owin;
using Microsoft.AspNet.Identity;

namespace Varopay.Admin
{
    public partial class DepositInAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnDeposit_Click(object sender, EventArgs e)
        {
            Deposit();
        }
        private void Deposit()
        {
            ApplicationDbContext db = new ApplicationDbContext();
            var user = Context.User.Identity.GetUserId();
            var act = db.Account.Single(a => a.MyAccount.Id == user).AccountsID;
            Accounts ac = db.Account.Find(act);
            ac.Amount+= Convert.ToDouble(txtAmount.Text);
           // db.Account.Add(ac);
            db.SaveChanges();
            lblResult.Text = "Amount " + txtAmount.Text + " USD has been deposited in your account";
            //Response.Redirect("~/User/Account");
        }
    }
}