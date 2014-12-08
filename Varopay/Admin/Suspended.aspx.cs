using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Varopay.Models;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.AspNet.Identity.EntityFramework;
using Owin;
using Microsoft.Owin;
using Microsoft.AspNet.Identity;

namespace Varopay.Admin
{
    public partial class Suspended : System.Web.UI.Page
    {
        ApplicationDbContext db = new ApplicationDbContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var spnd = db.Users.Count(u => u.Status == "Suspend");
                lblSusTotal.Text = spnd.ToString();
            }
        }

        // The return type can be changed to IEnumerable, however to support
        // paging and sorting, the following parameters must be added:
        //     int maximumRows
        //     int startRowIndex
        //     out int totalRowCount
        //     string sortByExpression
        public IQueryable<Varopay.Models.ApplicationUser> gdvSuspend_GetData()
        {
            return db.Users.Where(u=>u.Status=="Suspend");
        }
        private void Activate(string Id)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var us = manager.FindById(Id);
            //ApplicationUser usr = db.Users.Find(us);
            us.Status = "Closed";
            var result = manager.Update(us);
        }

        protected void lkbtnActivate_Click(object sender, EventArgs e)
        {
           // var name = (HyperLink)gdvSuspend.DataKeys[e.RowIndex].Values;
            //Activate(name.Text);
        }
    }
}