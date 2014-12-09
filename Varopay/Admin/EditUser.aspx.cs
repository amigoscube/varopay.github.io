using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Varopay.Models;
using Microsoft.AspNet.Identity;
using Owin;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.AspNet.Identity.EntityFramework;

namespace Varopay.Admin
{
    public partial class EditUser : System.Web.UI.Page
    {
        ApplicationDbContext db = new ApplicationDbContext();
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var id = Request.QueryString["Id"];
                ApplicationUser us = db.Users.Find(id);
                txtRegisterUsername.Text = us.UserName;
                txtRegisterAddress.Text = us.Address;
                txtPhoneNumber.Text = us.PhoneNumber;
                txtRegisterCity.Text = us.City;
                txtRegisterEmail.Text = us.Email;
                txtZipcode.Text = us.Zipcode;
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            var id = Request.QueryString["Id"];
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var us = manager.FindById(id);
            us.UserName = txtRegisterUsername.Text;
            us.PhoneNumber = txtPhoneNumber.Text;
            us.Email = txtRegisterEmail.Text;
            txtRegisterCity.TextChanged+=txtRegisterCity_TextChanged;
            us.City=txtRegisterCity.Text;
            us.Address = txtRegisterAddress.Text;
            us.Zipcode = txtZipcode.Text;
            manager.Update(us);
        }

        protected void txtRegisterUsername_TextChanged(object sender, EventArgs e)
        {
           var name = txtRegisterUsername.Text;
        }

        protected void txtRegisterEmail_TextChanged(object sender, EventArgs e)
        {
            //var id = Request.QueryString["Id"];
            //ApplicationUser us = db.Users.Find(id);
            var Email = txtRegisterEmail.Text;
        }

        protected void txtRegisterCity_TextChanged(object sender, EventArgs e)
        {
            //var id = Request.QueryString["Id"];
            //ApplicationUser us = db.Users.Find(id);
            //txtRegisterCity.TextChanged += txtRegisterCity_TextChanged;
            var City = txtRegisterCity.Text;
        }

        protected void txtRegisterAddress_TextChanged(object sender, EventArgs e)
        {
            //var id = Request.QueryString["Id"];
            //ApplicationUser us = db.Users.Find(id);
            var Address = txtRegisterAddress.Text;
        }

        ////protected void ddlCountry_SelectedIndexChanged(object sender, EventArgs e)
        ////{
        ////    var id = Request.QueryString["Id"];
        ////    ApplicationUser us = db.Users.Find(id);
        ////    us.Country = ddlCountry.SelectedIndex.ToString();
        ////    db.SaveChanges();
        ////}

        protected void txtZipcode_TextChanged(object sender, EventArgs e)
        {
            //var id = Request.QueryString["Id"];
            //ApplicationUser us = db.Users.Find(id);
            var Zipcode = txtZipcode.Text;
        }

        protected void txtPhoneNumber_TextChanged(object sender, EventArgs e)
        {
            //var id = Request.QueryString["Id"];
            //ApplicationUser us = db.Users.Find(id);
            var PhoneNumber = txtPhoneNumber.Text;
        }
    }
}