using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Varopay.Models;
using Microsoft.Owin;
using Microsoft.AspNet.Identity;

namespace Varopay.User
{
    public partial class DeleteAccount : System.Web.UI.Page
    {
        ApplicationDbContext db = new ApplicationDbContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillDdl();
            }
        }
        private void FillDdl()
        {
            var user = Context.User.Identity.GetUserId();
            var act = from ac in db.Account
                      where ac.MyAccount.Id.Contains(user)
                      select ac.CurAcc;
            List<String> ca = act.ToList();
            ddlAccount.DataSource = ca;
            ddlAccount.DataBind();
        }
        private void RemoveAccount(string Acnt)
        {
            var act = db.Account.Single(a => a.CurAcc == Acnt).AccountsID;
            Accounts ac = db.Account.Find(act);
            if (ac != null)
            {
                db.Account.Remove(ac);
                db.SaveChanges();
                FillDdl();
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            var acs = ddlAccount.SelectedValue;
            if(acs!=null)
            {
                RemoveAccount(acs.ToString());
                lblMsg.Text = "Acccount" + acs + "is successfully deleted";
            }
        }
    }
}