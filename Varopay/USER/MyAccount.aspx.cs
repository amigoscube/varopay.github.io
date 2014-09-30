using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Varopay.Models;
using Owin;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;

namespace Varopay.User
{
    public partial class MyAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lsvAccountBind();
        }
        public async void lsvAccountBind()
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var user = Context.User.Identity.GetUserId();
            HttpClient client = new HttpClient();
            var host = Request.Url.AbsoluteUri;
            client.BaseAddress = new Uri(host);
            client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
            HttpResponseMessage response = await client.GetAsync("api/Accounts/" +user);
            if (response.IsSuccessStatusCode)
            {
                var acc = await response.Content.ReadAsAsync<List<Varopay.Models.Account>>();
                lsvAccount.DataSource = acc;
                lsvAccount.DataBind();
            }
        }
    }
}