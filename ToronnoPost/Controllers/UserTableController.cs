using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using toronnopost.Models;
using WebShop.Models;

namespace WebShop.Controllers
{
    public class UserTableController : Controller
    {
        // GET: UserTable
       public ActionResult Index()
        {

            webshopEntities DbCompany = new webshopEntities();

            var data = from item in DbCompany.AspNetUsers

                       //where item.Company == "TCS"

                       orderby item.Id

                       select item;

            return View(data.ToList());

        }

        [HttpGet]
        public ActionResult Index1()
        {
            List<AspNetUser> model = new List<AspNetUser>();
            using (webshopEntities dc = new webshopEntities())
            {
                model = dc.AspNetUsers.ToList();
            }
            return View(model);



            //webshopEntities DbCompany = new webshopEntities();

            //var data = from item in DbCompany.AspNetUsers

            //               //where item.Company == "TCS"

            //           //orderby item.Id

            //           select item;

            //return View(data.ToList());

        }


        [HttpPost]

        public ActionResult Index1(List<AspNetUser> list)

        {
            if (ModelState.IsValid)
            {
                using (webshopEntities dc = new webshopEntities())
                {
                    foreach (var i in list)
                    {
                        var c = dc.AspNetUsers.Where(a => a.Id.Equals(i.Id)).FirstOrDefault();
                        if (c != null)
                        {
                            c.Email = i.Email;
                            c.PasswordHash = i.PasswordHash;
                            c.PhoneNumber = i.PhoneNumber;
                            c.UserName  = i.UserName;
                            //    Existed_Emp.PasswordHash = Emp.PasswordHash;
                            //    Existed_Emp.PhoneNumber = Emp.PhoneNumber;
                        }
                    }
                    dc.SaveChanges();
                }
                ViewBag.Message = "Successfully Updated.";
                return View(list);
            }
            else
            {
                ViewBag.Message = "Failed ! Please try again.";
                return View(list);
            }










            //webshopEntities DbCompany = new webshopEntities();



            //foreach (AspNetUser Emp in aspnetuser)

            //{

            //    AspNetUser Existed_Emp = DbCompany.AspNetUsers.Find(Emp.Id);

            //    Existed_Emp.Id = Emp.Id;

            //    Existed_Emp.Email = Emp.Email;
            //    Existed_Emp.PasswordHash = Emp.PasswordHash;
            //    Existed_Emp.PhoneNumber = Emp.PhoneNumber;

            //}



            //DbCompany.SaveChanges();

            //return View();

        }
    }
}