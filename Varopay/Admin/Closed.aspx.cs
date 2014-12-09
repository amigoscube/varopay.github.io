using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Varopay.Models;
using Microsoft.AspNet.Identity;
using Owin;
using Microsoft.Owin;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity.Owin;

namespace Varopay.Admin
{
    public partial class Closed : System.Web.UI.Page
    {
        ApplicationDbContext db = new ApplicationDbContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            var close = db.Users.Count(c => c.Status == "Closed");
            lblclsTotal.Text = close.ToString();
        }

        // The return type can be changed to IEnumerable, however to support
        // paging and sorting, the following parameters must be added:
        //     int maximumRows
        //     int startRowIndex
        //     out int totalRowCount
        //     string sortByExpression
        public IQueryable<Varopay.Models.ApplicationUser> gdvClose_GetData()
        {
            return db.Users.Where(u=>u.Status=="Closed");
        }

        protected void lkbtnActivate_Click(object sender, EventArgs e)
        {
            GridViewRow grow = ((LinkButton)sender).NamingContainer as GridViewRow;
            Label name = (Label)grow.FindControl("lblName");
            IdentityHelper.ChangeStatus(name.Text, "Active");
            gdvClose_GetData();
        }

        protected void lkbtnDelete_Click(object sender, EventArgs e)
        {
            GridViewRow grow = ((LinkButton)sender).NamingContainer as GridViewRow;
            Label name = (Label)grow.FindControl("lblName");
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var user = manager.FindByName(name.Text);
            manager.Delete(user);
        }
    }
}