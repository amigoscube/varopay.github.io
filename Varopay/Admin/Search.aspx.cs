using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
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
            gdvUsers_GetData();
        }
        private void GetUsers()
        {
            ApplicationDbContext db = new ApplicationDbContext();
            List<string> user = new List<string>();
            IEnumerable<Varopay.Models.ApplicationUser> us = db.Users.Where(u => (u.UserName.Contains(txtKey.Text)));
        }

        // The return type can be changed to IEnumerable, however to support
        // paging and sorting, the following parameters must be added:
        //     int maximumRows
        //     int startRowIndex
        //     out int totalRowCount
        //     string sortByExpression
        public IQueryable<Varopay.Models.ApplicationUser> gdvUsers_GetData()
        {
            ApplicationDbContext db = new ApplicationDbContext();
            List<string> user = db.Users.Select(s => s.UserName).ToList();
            IQueryable<Varopay.Models.ApplicationUser> us = db.Users.Where(u => (u.UserName.Contains(txtKey.Text)));
            return db.Users;
        }
    }
}