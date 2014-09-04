using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Varopay.Startup))]
namespace Varopay
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
