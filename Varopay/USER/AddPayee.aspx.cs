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
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var payer = Context.User.Identity.GetUserId();
            ApplicationDbContext db = new ApplicationDbContext();
            ApplicationUser user = manager.FindByName(txtPayee.Text);
            Accounts act = new Accounts();
            var c = db.Account.Find(txtPayeeAccount.Text);
            if (user != null && user.EmailConfirmed && c!=null)
            {
                IdentityHelper.createPayee(user.Id,payer,txtPayeeAccount.Text);
                Response.Redirect("~/User/SendMoney.aspx");
            }
        }
    }
}