using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Varopay.Models;
using System.Net;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.AspNet.Identity.EntityFramework;
using System.Net.Mail;

namespace Varopay.User
{
    public partial class ComposeTicket : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var user = Context.User.Identity.GetUserName();
            ApplicationUser mail = manager.FindByName(user);
            MailMessage msg = new MailMessage();
            msg.To.Add("divya.kandhadi@amigoscube.com");
            msg.From = new MailAddress(mail.Email);
            msg.Subject = txtSubject.Text;
            msg.Body = txtMessage.Text;
            SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
            msg.Priority = MailPriority.Normal;
            smtp.Credentials = new System.Net.NetworkCredential("divya.kandhadi@amigoscube.com", "tejaramm@1");
            smtp.Timeout = 25000;
            smtp.EnableSsl = true;
            smtp.Send(msg);
 
        }
    }
}