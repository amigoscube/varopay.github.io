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
            System.Threading.Thread.Sleep(5000);
            ddlAccount.DataSource = Enum.GetNames(typeof(CurrencyName));
            ddlAccount.DataBind();
           
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var userId = Context.User.Identity.GetUserId();
            CurrencyName cur = (CurrencyName)Enum.Parse(typeof(CurrencyName),ddlAccount.SelectedValue);
            IdentityHelper.createAccount(userId,cur);
            Response.Redirect("~/User/MyAccount.aspx");
        }
    }
}