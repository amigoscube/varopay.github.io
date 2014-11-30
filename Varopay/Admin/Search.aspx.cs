using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using Varopay.Models;

namespace Varopay.Admin
{
    public partial class Search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            
            GetUsers();
        }
        private void GetUsers()
        {
            ApplicationDbContext db = new ApplicationDbContext();
            var query = from u in db.Users
                        where u.UserName.Contains(txtKey.Text)
                        select  u.UserName;
            //ApplicationUser usr = db.Users.Select(u => u.UserName.Contains(txtKey.Text)).ToList()
            IQueryable<Varopay.Models.ApplicationUser> us = db.Users.Where(u => (u.UserName.Contains(txtKey.Text)));
            //List<ApplicationUser> us = query.ToList();
            gdvSearch.DataSource = us;
            gdvSearch.DataBind();
            
        }

        // The return type can be changed to IEnumerable, however to support
        // paging and sorting, the following parameters must be added:
        //     int maximumRows
        //     int startRowIndex
        //     out int totalRowCount
        //     string sortByExpression
        //public List<string> gdvUsers_GetData()
        //{
        //    ApplicationDbContext db = new ApplicationDbContext();
        //    //List<string> user = db.Users.Select(s => s.Id).ToList();
        //    //foreach(usr u in user)
        //IQueryable<Varopay.Models.ApplicationUser> us = db.Users.Where(u => (u.UserName.Contains(txtKey.Text)));
        //    return db.Users.ToList();
        //}
    }
}