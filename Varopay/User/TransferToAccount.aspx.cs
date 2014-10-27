using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Varopay.Models;

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
            ApplicationDbContext db = new ApplicationDbContext();
            try
            {
                var acto = db.Account.Single(t => t.CurAcc == txtAccount.Text).AccountsID;
                Accounts ac = db.Account.Find(acto);
                if (ac != null)
                {
                    IdentityHelper.SendMoney(txtFromAccount.Text, txtAccount.Text, Convert.ToDouble(txtAmount.Text));
                    lblException.Text= "Successfully  transacted "+txtAmount.Text+" USD to  "+txtAccount.Text+"";
                }
            }
            catch (Exception ex)
            {
                lblException.Text= ex.Message;
            }
        }
    }
}