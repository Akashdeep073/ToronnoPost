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


        public ActionResult Index1()
        {

            webshopEntities DbCompany = new webshopEntities();

            var data = from item in DbCompany.AspNetUsers

                           //where item.Company == "TCS"

                       orderby item.Id

                       select item;

            return View(data.ToList());

        }


        [HttpPost]

        public ActionResult Index1(List<AspNetUser> employees)

        {

            webshopEntities DbCompany = new webshopEntities();



            foreach (AspNetUser Emp in employees)

            {

                AspNetUser Existed_Emp = DbCompany.AspNetUsers.Find(Emp.Id);

                Existed_Emp.Id = Emp.Id;

                Existed_Emp.Email = Emp.Email;
                Existed_Emp.PasswordHash = Emp.PasswordHash;
                Existed_Emp.PhoneNumber = Emp.PhoneNumber;

            }



            DbCompany.SaveChanges();

            return View();

        }
    }
}