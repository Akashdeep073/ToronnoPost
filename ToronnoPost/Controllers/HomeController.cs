using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace toronnopost.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            ViewBag.Heading = "Welcome to Toronno Post";
            ViewBag.Subheading = "The Best Real Estate Website in Toronto";
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";
            ViewBag.Heading = "About";
            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";
            ViewBag.Heading = "Contact";
            return View();
        }

        public ActionResult Properties()
        {
            ViewBag.Heading = "Properties";
            ViewBag.Subheading = "More than billion properties listed";
            return View();
        }

        public ActionResult PropertyDetails()
        {
            ViewBag.Heading = "Property Details";
            return View();
        }

        public ActionResult NewProperty()
        {
            ViewBag.Heading = "New Property";
            return View();
        }
    }
}