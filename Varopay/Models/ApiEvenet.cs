using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using System.Net.Http;
using System.Threading;
using System.Threading.Tasks;
using System.Net;
using System.IO;
using System.Web.Routing;
using System.Net.Http.Headers;

namespace Varopay.Models
{
    public class ApiEvent : System.Web.HttpApplication
    {
        //    RCHEntities2 objapi = new RCHEntities2();  
        //    public async Task Insertapiaccess(List<Apilogging> objaccess)  
        //    {  
        //        try  
        //        {  
        //            Webapiaccess obj = new Webapiaccess();  
        //            foreach (var item in objaccess)  
        //            {  
        //                obj.ControllerName = item.controllername;  
        //                obj.ActionName = item.actionname;  
        //                obj.Ipaddress = item.myip;  
        //                obj.CreatedDate = DateTime.Now;  
        //                obj.UrlParameter = item.parameters;  
        //                obj.Dataparameter = item.dataparameter;  
        //                obj.RequestUrl = item.requesturl;  
        //            }  
        //            objapi.Webapiaccesses.Add(obj);  
        //            await objapi.SaveChangesAsync();  
        //        }  
        //        catch (Exception ex)  
        //        {  
        //            string errormsg = ex.Message.ToString();  
        //        }  
        //    }  
        //}  
        //public class Apilogging  
        //{  
        //    public string controllername { get; set; }  
        //    public string actionname { get; set; }  
        //    public string myip { get; set; }  
        //    public string parameters { get; set; }  
        //    public string dataparameter { get; set; }  
        //    public string requesturl { get; set; }  
        //}  
    }
}