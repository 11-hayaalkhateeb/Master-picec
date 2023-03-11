using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Master_picecMVC.Models;

namespace Master_picecMVC.Controllers
{
    public class proudectsController : Controller
    {
        private master_picesEntities db = new master_picesEntities();

        // GET: proudects
        public ActionResult Index()
        {
            var proudects = db.proudects.Include(p => p.subcat);
            return View(proudects.ToList());
        }
        public ActionResult proudects(int? id)
        {
            if (id == null)
            {
                var subcat = from m in db.Categorys select m;
                return View(subcat);
            }
            else
            {
                var subcat = from m in db.Categorys where m.id_category == id select m;
                return View(subcat);

            }
            return View();
        }

        // GET: proudects/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            proudect proudect = db.proudects.Find(id);
            if (proudect == null)
            {
                return HttpNotFound();
            }
            return View(proudect);
        }

        // GET: proudects/Create
        public ActionResult Create()
        {
            ViewBag.id_sub = new SelectList(db.subcats, "id_sub", "name");
            return View();
        }

        // POST: proudects/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "id,id_sub,Name,Description,Quentity,imgone,imgtwo,imgthree,imgfour,video,Price")] proudect proudect)
        {
            if (ModelState.IsValid)
            {
                db.proudects.Add(proudect);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.id_sub = new SelectList(db.subcats, "id_sub", "name", proudect.id_sub);
            return View(proudect);
        }

        // GET: proudects/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            proudect proudect = db.proudects.Find(id);
            if (proudect == null)
            {
                return HttpNotFound();
            }
            ViewBag.id_sub = new SelectList(db.subcats, "id_sub", "name", proudect.id_sub);
            return View(proudect);
        }

        // POST: proudects/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "id,id_sub,Name,Description,Quentity,imgone,imgtwo,imgthree,imgfour,video,Price")] proudect proudect)
        {
            if (ModelState.IsValid)
            {
                db.Entry(proudect).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.id_sub = new SelectList(db.subcats, "id_sub", "name", proudect.id_sub);
            return View(proudect);
        }

        // GET: proudects/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            proudect proudect = db.proudects.Find(id);
            if (proudect == null)
            {
                return HttpNotFound();
            }
            return View(proudect);
        }

        // POST: proudects/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            proudect proudect = db.proudects.Find(id);
            db.proudects.Remove(proudect);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
