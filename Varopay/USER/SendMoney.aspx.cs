using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Varopay.Models;
using Owin;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;

namespace Varopay.User
{
    public partial class SendMoney : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // The return type can be changed to IEnumerable, however to support
        // paging and sorting, the following parameters must be added:
        //     int maximumRows
        //     int startRowIndex
        //     out int totalRowCount
        //     string sortByExpression
        public IQueryable<Varopay.Models.Accounts> lsvAccount_GetData1()
        {
            ApplicationDbContext db = new ApplicationDbContext();
            var user = Context.User.Identity.GetUserId();
            ApplicationUser us = db.Users.Find(user);
            IQueryable<Varopay.Models.Accounts> acct = db.Account.Where(a => a.MyAccount.Id.Contains(user));
            return acct;
        }
    }
}