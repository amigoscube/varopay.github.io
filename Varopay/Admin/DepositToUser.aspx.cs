using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Varopay.Models;
using Owin;
using Microsoft.Owin;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;

namespace Varopay.Admin
{
    public partial class DepositToUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSendMoney_Click(object sender, EventArgs e)
        {
            var admin = Context.User.Identity.GetUserId();
            IdentityHelper.SendMoney(admin, txtTo.Text,Convert.ToDouble(txtAmount.Text));
        }
    }
}