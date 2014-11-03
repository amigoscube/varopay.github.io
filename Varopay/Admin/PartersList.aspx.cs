using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Varopay.Models;


namespace Varopay.Admin
{
    public partial class PartersList : System.Web.UI.Page
    {
        ApplicationDbContext db = new ApplicationDbContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // The return type can be changed to IEnumerable, however to support
        // paging and sorting, the following parameters must be added:
        //     int maximumRows
        //     int startRowIndex
        //     out int totalRowCount
        //     string sortByExpression
        public IQueryable<Varopay.Models.CertifiedPartner> gdvPartners_GetData()
        {
            return db.CertifiedPartners();
        }

        protected void gdvPartners_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {

        }

        protected void gdvPartners_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void gdvPartners_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("AddPartner"))
            {
                TextBox ptr = (TextBox)gdvPartners.FooterRow.FindControl("txtPartner");
                CertifiedPartner pt = new CertifiedPartner()
                {
                    CertifiedPartnerID = Guid.NewGuid(),
                    PartnerName = ptr.Text,
                    Status = "Active"
                };
                db.CertifiedPartners.Add(pt);
                db.SaveChanges();
            }
        }

        protected void gdvPartners_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            gdvPartners_GetData();
        }

        protected void chkPartner_CheckedChanged(object sender, EventArgs e)
        {
            foreach(GridViewRow gr in gdvPartners.Rows)
            {
                Label pat = (Label)gdvPartners.FindControl("lblPartner");
                CheckBox chk = (CheckBox)gdvPartners.FindControl("chkPartner");
                var pt = db.CertifiedPartners.Single(p => p.PartnerName == pat.Text).CertifiedPartnerID;
                CertifiedPartner cp = db.CertifiedPartners.Find(pt);
                if (chk.Checked)
                {
                    cp.Status = "Active";
                }
                else
                {
                    cp.Status = "Inactive";
                }
                db.SaveChanges();
            }
        }
    }
}