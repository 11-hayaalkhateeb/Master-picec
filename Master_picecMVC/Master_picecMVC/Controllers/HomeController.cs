using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Master_picecMVC.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }
        public PartialViewResult Indexx()
        {
            var x = new PartialViewResult();
            return PartialView("section_home" , x);
        }

        public PartialViewResult favert()
        {
            var x = new PartialViewResult();
            return PartialView("_favpro", x);
        }
        public ActionResult proudect()
        {
            return View();
        }
        public ActionResult singleproudect()
        {
            return View();
        }
        public ActionResult cart()
        {
            return View();
        }
        public ActionResult checkout()
        {
            return View();
        }

      
        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}