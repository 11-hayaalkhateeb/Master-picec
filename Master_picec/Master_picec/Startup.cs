using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Master_picec.Startup))]
namespace Master_picec
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
