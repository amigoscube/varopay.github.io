using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Owin;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Varopay.Models;

namespace Varopay.User
{
    public partial class AddAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ApplicationDbContext db = new ApplicationDbContext();
           // System.Threading.Thread.Sleep(5000);
            var cur = from c in db.Currencies
                      where c.Status.Equals("Active")
                      select c.CurrencyName;
            List<string> clist = cur.ToList();
            ddlAccount.DataSource = clist;
            ddlAccount.DataBind();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            GetAccount();
        }
        private void GetAccount()
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var userId = Context.User.Identity.GetUserId();
            CurrencyName cur = (CurrencyName)Enum.Parse(typeof(CurrencyName), ddlAccount.SelectedValue);
            IdentityHelper.createAccount(userId, cur);
            IdentityHelper.LogActivity("Account Created", true, Request);
            Response.Redirect("~/User/MyAccount.aspx");
        }
    }
}