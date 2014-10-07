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
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            
        }
    }
}