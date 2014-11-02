using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Varopay.Models;

namespace Varopay.Admin
{
    public partial class FAQList : System.Web.UI.Page
    {
        ApplicationDbContext db = new ApplicationDbContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                foreach (GridViewRow gr in gdvFAQ.Rows)
                {
                    Label Faq = (Label)gr.FindControl("lblQuestion");
                    CheckBox chk = (CheckBox)gr.FindControl("chkFAQ");
                    var fa = db.FAQs.Single(f => f.Question == Faq.Text).FAQId;
                    FAQ fq = db.FAQs.Find(fa);
                    if (fq.Status == "Active")
                    {
                        chk.Checked = true;
                    }
                }
            }
        }

        // The return type can be changed to IEnumerable, however to support
        // paging and sorting, the following parameters must be added:
        //     int maximumRows
        //     int startRowIndex
        //     out int totalRowCount
        //     string sortByExpression
        public IQueryable<Varopay.Models.FAQ> gdvFAQ_GetData()
        {
            return db.FAQs;
        }

        protected void chkFAQ_CheckedChanged(object sender, EventArgs e)
        {
            foreach (GridViewRow gr in gdvFAQ.Rows)
            {
                Label Faq = (Label)gr.FindControl("lblQuestion");
                CheckBox chk = (CheckBox)gr.FindControl("chkFAQ");
                var fa = db.FAQs.Single(f => f.Question == Faq.Text).FAQId;
                FAQ fq = db.FAQs.Find(fa);
                if (chk.Checked)
                {
                    fq.Status = "Active";
                }
                else
                {
                    fq.Status = "Inactive";
                }
            }
        }

        protected void gdvFAQ_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("AddFAQ"))
            {
                TextBox que = (TextBox)gdvFAQ.FooterRow.FindControl("txtQuestion");
                TextBox ans = (TextBox)gdvFAQ.FooterRow.FindControl("txtAnswer");
                FAQ fa = new FAQ()
                {
                    Question = que.Text,
                    Answer = ans.Text,
                    Status = "Active"
                };
                db.FAQs.Add(fa);
                db.SaveChanges();
                gdvFAQ_GetData();
            }
        }

        protected void gdvFAQ_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int faqid = Convert.ToInt32(gdvFAQ.DataKeys[e.RowIndex].Values["FAQId"].ToString());
            var fa = db.FAQs.Single(f => f.FAQId == faqid).FAQId;
            FAQ fq = db.FAQs.Find(fa);
            db.FAQs.Remove(fq);
            db.SaveChanges();
            gdvFAQ_GetData();
        }

        protected void gdvFAQ_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {
            gdvFAQ_GetData();
        }

        protected void gdvFAQ_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            gdvFAQ_GetData();
        }
    }
}