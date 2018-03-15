using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using toronnopost.Models;

namespace toronnopost.Controllers
{
    public class RegController : Controller
    {
        // GET: Reg
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult InsertDetails()
        {
            return View();
        }
        [HttpPost]
        public ActionResult InsertDetails(RegisterProperty obj)
        {
            /*foreach (HttpPostedFileBase file in obj.files)
            {
                //Checking file is available to save.  
                if (file != null)
                {
                    var InputFileName = Path.GetFileName(file.FileName);
                    var ServerSavePath = Path.Combine(Server.MapPath("~/UploadedFiles/") + InputFileName);
                    //Save file to server folder  
                    file.SaveAs(ServerSavePath);
                    //assigning file uploaded status to ViewBag for showing message to user.  
                    ViewBag.UploadStatus = obj.files.Count().ToString() + " files uploaded successfully.";
                }

            }*/
            RegisterProperty objreg = new RegisterProperty();
            string result = objreg.InsertRegDetails(obj);
            ViewData["result"] = result;
            ModelState.Clear();
            return View();
        }
    }
}