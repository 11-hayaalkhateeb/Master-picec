using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Master_picecMVC.Startup))]
namespace Master_picecMVC
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
