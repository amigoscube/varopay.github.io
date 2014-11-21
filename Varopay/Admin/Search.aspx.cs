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

        }
        [WebMethod]
        private static List<string> GetUsers(string Username)
        {
            List<string> user = new List<string>();
            ApplicationDbContext db = new ApplicationDbContext();
            IQueryable<Varopay.Models.ApplicationUser> query = db.Users.Where(u=>u.UserName.Contains(Username));
            user.Add(query.ToString());
            return user;

        }
    }
}