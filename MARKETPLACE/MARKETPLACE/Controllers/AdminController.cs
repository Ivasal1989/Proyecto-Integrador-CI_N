using MARKETPLACE.DAL;
using MARKETPLACE.Models;
using MARKETPLACE.Repositorio;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MARKETPLACE.Controllers
{
    public class AdminController : Controller
    {
        // GET: Admin

        public GenericUnitOfWork _unitOfWork = new GenericUnitOfWork();

        public List<SelectListItem> GetCategoria()
        {
            List<SelectListItem> list = new List<SelectListItem>();
            var cat = _unitOfWork.GetRepositoryInstance<categoria>().GetAllRecords();
            foreach (var item in cat)
            {
                list.Add(new SelectListItem { Value = item.idcategoria.ToString(), Text = item.desc_categoria });
            }
            return list;
        }

        public ActionResult Dashboard()
        {
            return View();
        }

        public ActionResult Categorias()
        {
            List<categoria> allcategories = _unitOfWork.GetRepositoryInstance<categoria>().GetAllRecordsIQueryable().Where(i => i.IsDelete == false).ToList();
            return View(allcategories);
        }

        public ActionResult AddCategoria()
        {
            return UpdateCategoria(0);
        }

        public ActionResult UpdateCategoria(int categoriaId)
        {
            CategoriaDetalle cd;
                if(categoriaId != null)
                {
                    cd = JsonConvert.DeserializeObject<CategoriaDetalle>(JsonConvert.SerializeObject(_unitOfWork.GetRepositoryInstance<categoria>().GetFirstorDefault(categoriaId)));
                }
                else{
                    cd = new CategoriaDetalle();
                    }
            return View("UpdateCategoria", cd);
        }

        public ActionResult CategoriaEdit(int catId)
        {
            return View(_unitOfWork.GetRepositoryInstance<categoria>().GetFirstorDefault(catId));
        }
        [HttpPost]
        public ActionResult CategoriaEdit(categoria tbl)
        {
            _unitOfWork.GetRepositoryInstance<categoria>().Update(tbl);
            return RedirectToAction("Categorias");
        }







        public ActionResult Producto()
        {
            return View(_unitOfWork.GetRepositoryInstance<producto>().GetProducto());
        }
        public ActionResult ProductoEdkit(int productoId)
        {
            ViewBag.CategoryList = GetCategoria();
            return View(_unitOfWork.GetRepositoryInstance<producto>().GetFirstorDefault(productoId));
        }
        [HttpPost]
        public ActionResult ProductoEdkit(producto tbl, HttpPostedFileBase file)
        {

            string pic = null;
            if (file != null)
            {
                pic = System.IO.Path.GetFileName(file.FileName);
                string path = System.IO.Path.Combine(Server.MapPath("~/Productos_ing/"), pic);
                file.SaveAs(path);
            }
            tbl.img_producto = pic;

            tbl.fecaModificado = DateTime.Now;
            _unitOfWork.GetRepositoryInstance<producto>().Update(tbl);
            return RedirectToAction("Producto");
        }

        public ActionResult ProductoAdd()
        {
            ViewBag.CategoryList = GetCategoria();
            return View();
        }
        [HttpPost]
        public ActionResult ProductoAdd(producto tbl, HttpPostedFileBase file)
        {
            string pic = null;
            if (file != null)
            {
                pic = System.IO.Path.GetFileName(file.FileName);
                string path = System.IO.Path.Combine(Server.MapPath("~/Productos_ing/"), pic);
                file.SaveAs(path);
            }
            tbl.img_producto = file!=null?pic: tbl.img_producto;
            tbl.fechaCreado = DateTime.Now;
            _unitOfWork.GetRepositoryInstance<producto>().Add(tbl);
            return RedirectToAction("Producto");
        }



    }
}