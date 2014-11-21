﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Varopay.Models;

namespace Varopay.Admin
{
    public partial class UserDetails : System.Web.UI.Page
    {
        ApplicationDbContext db = new ApplicationDbContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            var id = Request.QueryString["Id"];
            User(id);

        }
        private void User(string ID)
        {
            ApplicationUser us = db.Users.Find(ID);
            Username.Text = us.UserName;
            Email.Text = us.Email;
            Country.Text = us.Country;
            Address.Text = us.Address;
            City.Text = us.City;
            PhoneNumber.Text = us.PhoneNumber;
            Zipcode.Text = us.Zipcode;
        }
    }
}