using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Varopay.Models;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.AspNet.Identity;
using Owin;
using System.IO;

namespace Varopay.Admin
{
    public partial class Account : System.Web.UI.Page
    {
       
        ApplicationDbContext db = new ApplicationDbContext();
        IdentityResult result = new IdentityResult();
        protected void Page_Load(object sender, EventArgs e)
        {
            lblActive.Text = db.Users.Count(a => a.Status == "Active").ToString();
            lblSuspended.Text = db.Users.Count(s=> s.Status == "Suspend").ToString();
            lblClosed.Text = db.Users.Count(c => c.Status == "Closed").ToString();
            lblTransaction.Text = db.Transactions.Count().ToString();
             
        }

        
    }
}