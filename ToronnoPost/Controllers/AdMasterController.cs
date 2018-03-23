using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebShop.Models;

namespace WebShop.Controllers
{
    public class AdMasterController : Controller
    {
        // GET: AdMaster
        public ActionResult Index()
        {
            return View();
        }

        [HttpGet]
        public ActionResult Index1()
        {
            List<ad_master> model = new List<ad_master>();
            using (AdMasterEntities dc = new AdMasterEntities())
            {
                model = dc.ad_master.ToList();
            }
            return View(model);     
        }


        [HttpPost]

        public ActionResult Index1(List<ad_master> list)

        {
            if (ModelState.IsValid)
            {
                using (AdMasterEntities dc = new AdMasterEntities())
                {
                    foreach (var i in list)
                    {
                        var c = dc.ad_master.Where(a => a.adid.Equals(i.adid)).FirstOrDefault();
                        if (c != null)
                        {
                            c.address = i.address;
                            c.ad_type = i.ad_type;                            
                            c.description = i.description;                            
                            c.location = i.location;                            
                            c.price = i.price;
                            c.title = i.title;                            
                        }
                    }
                    dc.SaveChanges();
                }
                ViewBag.Message = "Successfully Updated.";
                return View( list);
            }
            else
            {
                ViewBag.Message = "Failed ! Please try again.";
                return View(list);
            }

        }
    }
}