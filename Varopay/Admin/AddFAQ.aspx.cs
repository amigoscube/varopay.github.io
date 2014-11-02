using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Varopay.Models;

namespace Varopay.Admin
{
    public partial class AddFAQ : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            ApplicationDbContext db = new ApplicationDbContext();
            FAQ fa = new FAQ()
            {
                FAQId = 1,
                Question = txtQuestion.Text,
                Answer = txtAnswer.Text,
                Status = "Active"
            };
            db.FAQs.Add(fa);
            db.SaveChanges();
        }
    }
}