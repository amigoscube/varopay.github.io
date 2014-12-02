using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Varopay.Models;
using Microsoft.Owin;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;

namespace Varopay.User
{
    public partial class OkPay : System.Web.UI.Page
    {
        ApplicationDbContext db = new ApplicationDbContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
              //  FillCurrency();
                FillAccount();
            }
        }
        private void FillCurrency()
        {
           
            List<Currency> cur = db.Currencies.ToList();
            //ddlCurrency.DataSource = cur;
           // ddlCurrency.DataValueField = "CurrencyName";
            //ddlCurrency.DataTextField = "CurrencyName";
            //ddlCurrency.te = cur.ToString();
           // ddlCurrency.DataBind();
        }
        private void FillAccount()
        {
            var user = Context.User.Identity.GetUserId();
            var acc = from a in db.Account
                               where a.MyAccount.Id.Contains(user)
                               select a.CurAcc.ToString();
            List<string> ac = acc.ToList();
            ddlAccount.DataSource = ac;
            ddlAccount.DataBind();
        }
        protected void CurrencyChanged(object sender,EventArgs e)
        {
           // Currency.Value = ddlCurrency.SelectedIndex.ToString();
        }
    }
}