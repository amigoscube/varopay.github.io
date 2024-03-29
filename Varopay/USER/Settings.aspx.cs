﻿using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using Varopay.Models;

namespace Varopay.User
{
    public partial class Settings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var id = Context.User.Identity.GetUserId();
                IdentityHelper.LogActivity("Changed Profile", true, Request,id);
                GetUserDet();
            }
        }
        private void GetUserDet()
        {
            var user = Context.User.Identity.GetUserId();
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            ApplicationUser usr = manager.FindById(user);
            txtUsername.Text = usr.UserName;
            txtRegisterCity.Text = usr.City;
            txtEmail.Text = usr.Email;
            txtPhoneNumber.Text = usr.PhoneNumber;
            txtRegisterAddress.Text = usr.Address;
            txtZipcode.Text = usr.Zipcode;
           // ddlCountry.SelectedValue = usr.Country;
        }
        protected void btnUpload_Click(object sender, EventArgs e)
        {
            ApplicationDbContext db = new ApplicationDbContext();
            if (this.fupProfImg.HasFile)
            {
                fupProfImg.SaveAs(Server.MapPath("~/UserProfilePics/" + this.fupProfImg.FileName));
                string fileName = Path.GetFileName(this.fupProfImg.PostedFile.FileName);
                Session["ImagePath"] = "~/UserProfilePics/" + fileName;
                var user = Context.User.Identity.GetUserId();
                ApplicationUser us = db.Users.Find(user);
                us.ProfileImg = Session["ImagePath"].ToString();
                db.SaveChanges();
                Response.Redirect("~/User/MyAccount.aspx");
            }
            else
            {
                ltrMsg.Text = "No file found";
            }
            }
        }
    }
