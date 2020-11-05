using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using BookShop.Models;

namespace BookShop.Controllers
{
    public class BooksController : Controller
    {
        private BookShopDBEntities db = new BookShopDBEntities();

        // GET: Books
        public ActionResult Index()
        {
            var books = db.Books.Include(b => b.AgeCategory1).Include(b => b.Authors).Include(b => b.CoverTypes).Include(b => b.Genres);
            return View(books.ToList());
        }

        // GET: Books/Create
        public ActionResult Create()
        {
            ViewBag.AgeCategory = new SelectList(db.AgeCategory, "ID", "Name");
            ViewBag.Author = new SelectList(db.Authors, "ID", "Name");
            ViewBag.CoverType = new SelectList(db.CoverTypes, "ID", "Name");
            ViewBag.Genre = new SelectList(db.Genres, "ID", "Name");
            return View();
        }

        // POST: Books/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,Author,Name,DataPrint,CoverType,AgeCategory,Genre")] Books books)
        {
            if (ModelState.IsValid)
            {
                db.Books.Add(books);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.AgeCategory = new SelectList(db.AgeCategory, "ID", "Name", books.AgeCategory);
            ViewBag.Author = new SelectList(db.Authors, "ID", "Name", books.Author);
            ViewBag.CoverType = new SelectList(db.CoverTypes, "ID", "Name", books.CoverType);
            ViewBag.Genre = new SelectList(db.Genres, "ID", "Name", books.Genre);
            return View(books);
        }

        // GET: Books/Edit/5
        public ActionResult Edit(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Books books = db.Books.Find(id);
            if (books == null)
            {
                return HttpNotFound();
            }
            ViewBag.AgeCategory = new SelectList(db.AgeCategory, "ID", "Name", books.AgeCategory);
            ViewBag.Author = new SelectList(db.Authors, "ID", "Name", books.Author);
            ViewBag.CoverType = new SelectList(db.CoverTypes, "ID", "Name", books.CoverType);
            ViewBag.Genre = new SelectList(db.Genres, "ID", "Name", books.Genre);
            return View(books);
        }

        // POST: Books/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,Author,Name,DataPrint,CoverType,AgeCategory,Genre")] Books books)
        {
            if (ModelState.IsValid)
            {
                db.Entry(books).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.AgeCategory = new SelectList(db.AgeCategory, "ID", "Name", books.AgeCategory);
            ViewBag.Author = new SelectList(db.Authors, "ID", "Name", books.Author);
            ViewBag.CoverType = new SelectList(db.CoverTypes, "ID", "Name", books.CoverType);
            ViewBag.Genre = new SelectList(db.Genres, "ID", "Name", books.Genre);
            return View(books);
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
