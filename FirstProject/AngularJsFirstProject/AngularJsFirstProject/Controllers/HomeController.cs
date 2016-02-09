using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace AngularJsFirstProject.Controllers
{
    public class HomeController : Controller
    {
        //
        // GET: /Home/

        public ActionResult Index()
        {
            return View();
        }
        public ActionResult About()
        {
            ViewBag.Title = "About";
            return View();
        }
        public ActionResult RepositoryList()
        {
            ViewBag.Title = "Repository List";
            return View();
        }
        public ActionResult TestPage()
        {
            ViewBag.Title = "About";
            return View();
        }
    }
}
