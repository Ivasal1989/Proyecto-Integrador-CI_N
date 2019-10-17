using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MARKETPLACE.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        public ActionResult Home()
        {
            return View();
        }

		public ActionResult Index()
		{
			return View();
		}

        //public ActionResult Create()
        //{
        //    ViewBag.id_categoria = new SelectList(db.categoria.ToList(), "idcategoria", "desc_categoria");
        //    ViewBag.id_marca = new SelectList(db.marca.ToList(), "idmarca", "desc_marca");
        //    return View();
        //}
        //[HttpPost]
        //[ValidateAntiForgeryToken]

        //public ActionResult Create([Bind(Include = "id_producto,id_marca,id_categoria,nombre_producto,img_producto,preciof_producto,desc_producto")] producto prod)
        //{
        //    HttpPostedFileBase FileBase = Request.Files[0];
        //    WebImage image = new WebImage(FileBase.InputStream);
        //    prod.img_producto = image.GetBytes();

        //    if (ModelState.IsValid)
        //    {

        //        db.producto.Add(prod);
        //        db.SaveChanges();
        //        return RedirectToAction("Index");
        //    }

        //    ViewBag.id_categoria = new SelectList(db.categoria.ToList(), "idcategoria", "desc_categoria", prod.id_categoria);
        //    ViewBag.id_marca = new SelectList(db.marca.ToList(), "idmarca", "desc_marca", prod.id_marca);
        //    return View(prod);
        //}


    }
}