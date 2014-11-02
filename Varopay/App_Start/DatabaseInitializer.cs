using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Threading.Tasks;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.Owin;
using Varopay.Models;
using System.Data.Entity;
using System.Threading;
using System.Text;


namespace Varopay.App_Start
{
    public class DatabaseInitializer :DropCreateDatabaseIfModelChanges<ApplicationDbContext>
    {
        protected override void Seed(ApplicationDbContext context)
        {
            InitializeIdentityForEf(context);

            List<Currency> curs = new List<Currency>();            
            curs.Add(new Currency() { CurrencyName = "USD", CurrencyID = Guid.NewGuid(), Status="Active"});

            foreach(Currency cur in curs)
                context.Currencies.Add(cur);
            context.SaveChanges();

            base.Seed(context);
        }
        private void InitializeIdentityForEf(ApplicationDbContext context)
        {
            var UserManager = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(context));
            var RoleManager = new RoleManager<IdentityRole>(new RoleStore<IdentityRole>(context));
            string username = "admin";
            string Password = "Admin@123";
            string AdminRole = "Administrator";
            string EmailId = "divya.kandhadi@amigoscube.com";

            RoleManager.Create(new IdentityRole(AdminRole));
            //UserManager.Create(new ApplicationUser() { UserName = username });

            if (!RoleManager.RoleExists(AdminRole))
            {
                var roleresult = RoleManager.Create(new IdentityRole(AdminRole));
            }

            var User = new ApplicationUser();
            User.UserName = username;
            User.Email = EmailId;
            var adminresult = UserManager.Create(User, Password);
            if (adminresult.Succeeded)
            {
                var result = UserManager.AddToRole(User.Id, AdminRole);
                User.EmailConfirmed = true;
                User.Status = "Active";
                foreach(CurrencyName c in Enum.GetValues(typeof(CurrencyName)))
                {
                    IdentityHelper.createAccount(User.Id, c);
                }
            }
        }
    }
}