using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(toronnopost.Startup))]
namespace toronnopost
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
