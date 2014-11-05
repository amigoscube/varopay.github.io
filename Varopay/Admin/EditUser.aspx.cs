using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Varopay.Models;

namespace Varopay.Admin
{
    public partial class EditUser : System.Web.UI.Page
    {
        ApplicationDbContext db = new ApplicationDbContext();
        protected void Page_Load(object sender, EventArgs e)
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

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            var id = Request.QueryString["Id"];
            ApplicationUser us = db.Users.Find(id);
            us.UserName = txtRegisterUsername.Text;
            us.PhoneNumber = txtPhoneNumber.Text;
            us.Email = txtRegisterEmail.Text;
            us.City = txtRegisterCity.Text;
            us.Address = txtRegisterAddress.Text;
            us.Zipcode = txtZipcode.Text;
            db.Users.Add(us);
            db.SaveChanges();
        }

        ////protected void txtRegisterUsername_TextChanged(object sender, EventArgs e)
        ////{
        ////    var id = Request.QueryString["Id"];
        ////    ApplicationUser us = db.Users.Find(id);
        ////    us.UserName = txtRegisterUsername.Text;
        ////    db.SaveChanges();
        ////}

        ////protected void txtRegisterEmail_TextChanged(object sender, EventArgs e)
        ////{
        ////    var id = Request.QueryString["Id"];
        ////    ApplicationUser us = db.Users.Find(id);
        ////    us.Email = txtRegisterEmail.Text;
        ////    db.SaveChanges();
        ////}

        ////protected void txtRegisterCity_TextChanged(object sender, EventArgs e)
        ////{
        ////    var id = Request.QueryString["Id"];
        ////    ApplicationUser us = db.Users.Find(id);
        ////    txtRegisterCity.TextChanged+=txtRegisterCity_TextChanged;
        ////    us.City =txtRegisterCity.Text;
        ////    db.SaveChanges();
        ////}

        ////protected void txtRegisterAddress_TextChanged(object sender, EventArgs e)
        ////{
        ////    var id = Request.QueryString["Id"];
        ////    ApplicationUser us = db.Users.Find(id);
        ////    us.Address = txtRegisterAddress.Text;
        ////    db.SaveChanges();
        ////}

        ////protected void ddlCountry_SelectedIndexChanged(object sender, EventArgs e)
        ////{
        ////    var id = Request.QueryString["Id"];
        ////    ApplicationUser us = db.Users.Find(id);
        ////    us.Country = ddlCountry.SelectedIndex.ToString();
        ////    db.SaveChanges();
        ////}

        ////protected void txtZipcode_TextChanged(object sender, EventArgs e)
        ////{
        ////    var id = Request.QueryString["Id"];
        ////    ApplicationUser us = db.Users.Find(id);
        ////    us.Zipcode = txtZipcode.Text;
        ////    db.SaveChanges();
        ////}

        ////protected void txtPhoneNumber_TextChanged(object sender, EventArgs e)
        ////{
        ////    var id = Request.QueryString["Id"];
        ////    ApplicationUser us = db.Users.Find(id);
        ////    us.PhoneNumber = txtPhoneNumber.Text;
        ////    db.SaveChanges();
        ////}
    }
}