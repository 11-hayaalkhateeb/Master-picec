using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Master_picecMVC.Controllers
{
    public class dashboardController : Controller
    {
        // GET: dashboard
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult dashboard()
        {
            return View();
        }
        public ActionResult chart()
        {
            return View();
        }
        public ActionResult user()
        {
            return View();
        }

        public ActionResult showcategory()
        {
            return View();
        }
        public ActionResult Addcategory()
        {
            return View();
        }

        public ActionResult editcategory()
        {
            return View();
        }
        public ActionResult deletecategory()
        {
            return View();
        }

        public ActionResult showproudect()
        {
            return View();
        }

    }
}