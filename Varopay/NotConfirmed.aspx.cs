using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Owin;
using Microsoft.AspNet.Identity.Owin;
using Varopay.Models;
using Microsoft.AspNet.Identity;
using Owin;
using Varopay.Account;
using Microsoft.AspNet.Identity.EntityFramework;
using System.Net;
using System.Net.Mail;
using Microsoft.Owin.Security;



namespace Varopay
{
    public partial class NotConfirmed : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSendMail_Click(object sender, EventArgs e)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            //IdentityHelper.SendConfirmationMail(userId, Context, Request);
        }
    }
}