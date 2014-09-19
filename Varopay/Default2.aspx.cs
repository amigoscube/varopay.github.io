using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Varopay
{
    public partial class Default2 : System.Web.UI.Page    
    {        
        protected void Page_Load(object sender, EventArgs e)
        {
                //string strPreviousPage = "";
            //if (Request.UrlReferrer != null)
            //{
            //    strPreviousPage = Request.UrlReferrer.Segments[Request.UrlReferrer.Segments.Length - 1];
            //}
            //if (strPreviousPage == "")
            //{
            //    Response.Redirect("Default.aspx");
            //}
            if (Page.User.IsInRole("Administrator"))
            {
                Response.Redirect("Default2.aspx");
            }
            else
            {
                Response.Redirect("~/");
            }
        }
    }
}