using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using Varopay.Models;
using System.Data.Entity;
using Varopay.App_Start;
using System.Web.Http;
using System.Threading.Tasks;
using System.Net;
using System.Web.Routing;
using System.IO;
using System.Web.Http.Routing;

namespace Varopay
{
    public class Global : HttpApplication
    {
        string action = "";
        string parameter = "";
        string hostname = "";
        string ipaddress = "";
        string requesturl = "";
        string dataparameter = "";
        protected void Application_BeginRequest(object sender, EventArgs args)
        {
            Logging();
        }

        private async Task Logging()
        {
            List<Log> objlogging = new List<Log>();
            ApiEvent objEvent = new ApiEvent();
            HttpContextBase currentContext = new HttpContextWrapper(HttpContext.Current);
            UrlHelper urlhelper = new UrlHelper();
            RouteCollection rc = new RouteCollection();
            var rd =rc.GetRouteData(currentContext);
            RouteData routedata = rd;
            action = routedata.Values["action"].ToString();
            parameter = routedata.Values["Id"].ToString();
            hostname = Dns.GetHostName();
            ipaddress = Dns.GetHostByName(hostname).AddressList[0].ToString();
            HttpContext.Current.Request.InputStream.Position = 0;
            using (StreamReader inputStream = new StreamReader(HttpContext.Current.Request.InputStream))
            {
                dataparameter = inputStream.ReadToEnd();
            }
            requesturl = Request.Url.AbsoluteUri;
            //objlogging.Add(new Apilogging
            //    {
            //        actionname = action,
            //        myip = ipaddress,
            //        parameters = parameter,
            //        dataparameter = dataparameter,
            //        requesturl = requesturl
            //    });
            ApplicationDbContext db = new ApplicationDbContext();
            var usid = Context.User.Identity.GetUserId();
            ApplicationUser us = db.Users.Find(usid);
            objlogging.Add(new Log
                {
                    LogID = Guid.NewGuid(),
                    Activity = action,
                    Date = DateTime.Now.ToString(),
                    Details = parameter,
                    UserLog = us,
                    Object = requesturl,
                });
        }
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            Database.SetInitializer<ApplicationDbContext>(new DatabaseInitializer());
            GlobalConfiguration.Configure(WebApiConfig.Register);
        }
    }
}