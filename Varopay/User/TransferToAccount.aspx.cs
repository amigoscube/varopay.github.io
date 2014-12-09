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
    public partial class TransferToAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ddlFromAccount.DataSource = Enum.GetNames(typeof(CurrencyName));
            ddlFromAccount.DataBind();
            txtFromAccount.Text = Request.QueryString["CurAcc"];
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            Transfer();
        }
        private void Transfer()
        {
            var frmAct = txtFromAccount.Text;
            var uid = Context.User.Identity.GetUserId();
            ApplicationDbContext db = new ApplicationDbContext();
            try
            {
                var aId = from cur in db.Account
                          where cur.MyAccount.Id.Equals(uid)
                          select cur.CurAcc;
                if (aId.Contains(txtFromAccount.Text))
                {
                    var acto = db.Account.Single(t => t.CurAcc.Equals(txtAccount.Text)).AccountsID;
                    Accounts ac = db.Account.Find(acto);
                    if (ac != null)
                    {
                        IdentityHelper.SendMoney(frmAct, txtAccount.Text, Convert.ToDouble(txtAmount.Text));
                        IdentityHelper.LogActivity("Transacted" + txtAmount.Text, true, Request,uid);
                        lblException.Text = "Successfully  transacted " + txtAmount.Text + " USD to  " + txtAccount.Text + "";
                    }
                }
            }
            catch (Exception ex)
            {
                lblException.Text = ex.Message;
            }
        }
    }
}