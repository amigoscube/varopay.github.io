using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Varopay.Admin
{
    public partial class PartersList : System.Web.UI.Page
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
        public IQueryable<Varopay.Models.CertifiedPartner> gdvPartners_GetData()
        {
            return null;
        }

        protected void gdvPartners_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {

        }

        protected void gdvPartners_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void gdvPartners_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }

        protected void gdvPartners_RowDataBound(object sender, GridViewRowEventArgs e)
        {

        }
    }
}