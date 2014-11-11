using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.AspNet.Identity.EntityFramework;
using Owin;
using Varopay.Models;
using System.Web.Security;

namespace Varopay
{
    public partial class UserMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Request.UrlReferrer == null || string.IsNullOrEmpty(Request.UrlReferrer.AbsolutePath))
            //{
            //    Session.Abandon();
            //    FormsAuthentication.SignOut();
            //    FormsAuthentication.RedirectToLoginPage();
            //}
            if(!this.IsPostBack)
            {
                var user = Context.User.Identity.GetUserId();
                if (user != null)
                {
                    ApplicationDbContext db = new ApplicationDbContext();
                    ApplicationUser us = db.Users.Find(user);
                    if (us.ProfileImg != null)
                    {
                        imgProfilePic.ImageUrl = us.ProfileImg;
                    }
                    else
                    {
                        imgProfilePic.ImageUrl = "~/Images/defaultProfile.jpg";
                    }
                }
            }

        }

        protected void Unnamed_LoggingOut1(object sender, LoginCancelEventArgs e)
        {
            Context.GetOwinContext().Authentication.SignOut();
        }
    }
}