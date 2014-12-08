using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Varopay.Models;
using Microsoft.Owin;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity.Owin;

namespace Varopay.Admin
{
    public partial class Active_User : System.Web.UI.Page
    {
        ApplicationDbContext db = new ApplicationDbContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            var count = db.Users.Count(u => u.Status == "Active");
            lblTotal.Text = count.ToString();
        }

        // The return type can be changed to IEnumerable, however to support
        // paging and sorting, the following parameters must be added:
        //     int maximumRows
        //     int startRowIndex
        //     out int totalRowCount
        //     string sortByExpression
        public IQueryable<Varopay.Models.ApplicationUser> gdvActive_GetData()
        {
            return db.Users.Where(u => u.Status == "Active");
        }
        public void Suspend(string user)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var us = manager.FindByName(user);
            //ApplicationUser usr = db.Users.Find(us);
            us.Status = "Suspend";
            var result = manager.Update(us);
        }

        public void Closed(string id)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var us = manager.FindById(id);
            //ApplicationUser usr = db.Users.Find(us);
            us.Status = "Closed";
            var result = manager.Update(us);
        }
        protected void lkbtnSuspend_Click(object sender, GridViewRowEventArgs e)
        {
          //foreach(GridViewRow gr in gdvActive.Rows)
          //{
          //    HyperLink hplname = (HyperLink)gr.FindControl("hplName");
          //    Suspend(hplname.Text);
          //}
            var name = (HyperLink)gdvActive.DataKeys[e.Row.RowIndex].Values;
            Suspend(name.Text);
        }
    }
}