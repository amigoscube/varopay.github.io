using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Varopay.Models;

namespace Varopay.Admin
{
    public partial class Enable : System.Web.UI.Page
    
    {
        ApplicationDbContext db = new ApplicationDbContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                foreach (GridViewRow rw in gdvCurrency.Rows)
                {
                    Label lbl = (Label)rw.FindControl("lblCurrency");
                    CheckBox chk = (CheckBox)rw.FindControl("chkCurrency");
                    var curency = db.Currencies.Single(c => c.CurrencyName == lbl.Text).CurrencyID;
                    Currency cur = db.Currencies.Find(curency);
                    if (cur.Status == "Active")
                    {
                        chk.Checked = true;
                    }
                }
            }
        }
        protected void chkCurrency_CheckedChanged(object sender, EventArgs e)
        {
            foreach (GridViewRow gr in gdvCurrency.Rows)
            {
                Label lbl = (Label)gr.FindControl("lblCurrency");
                CheckBox chk = (CheckBox)gr.FindControl("chkCurrency");
                var curency = db.Currencies.Single(c => c.CurrencyName == lbl.Text).CurrencyID;
                Currency cur = db.Currencies.Find(curency);
                if (chk.Checked)
                {
                    cur.Status = "Active";
                }
                else
                {
                    cur.Status = "Inactive";
                }
                db.SaveChanges();
            }
        }

        // The return type can be changed to IEnumerable, however to support
        // paging and sorting, the following parameters must be added:
        //     int maximumRows
        //     int startRowIndex
        //     out int totalRowCount
        //     string sortByExpression
        public IQueryable<Varopay.Models.Currency> gdvCurrency_GetData()
        {
            return db.Currencies;
        }

        protected void gdvCurrency_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName.Equals("AddCurrency"))
            {
                TextBox currency = (TextBox)gdvCurrency.FooterRow.FindControl("txtCurrency");
                Currency cur = new Currency()
                {
                    CurrencyID = Guid.NewGuid(),
                    CurrencyName = currency.Text.ToString(),
                    Status="Active"
                };
                db.Currencies.Add(cur);
                db.SaveChanges();
                gdvCurrency_GetData();
                lblResult.Text = "Successfully added "+currency.Text+ "";
            }
        }
    }
}