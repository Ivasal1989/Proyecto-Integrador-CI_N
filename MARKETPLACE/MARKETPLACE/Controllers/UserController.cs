using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

using MARKETPLACE.Models;
using MARKETPLACE.Entity;
using MARKETPLACE.SQLServer;
///////////////
using System.IO;
using System.Web.Helpers;
using System.Drawing;
using System.Drawing.Imaging;

namespace MARKETPLACE.Controllers
{
    public class UserController : Controller
    {
        SessionData session = new SessionData();
        UsersDL usersDL = new UsersDL();
        private conexionDB db = new conexionDB();

        public ActionResult Listado_usuario()
        {
            return View(usersDL.Listado_pais());
        }

        public ActionResult Registrar_users()
        {
            ViewBag.pais = new SelectList(usersDL.Listado_pais(), "idpais", "descripcion");
            return View(new Uxsers());
        }

        [HttpPost]
        public ActionResult Registrar_users(Uxsers us)
        {
            if (!ModelState.IsValid)
            {
                ViewBag.pais = new SelectList(usersDL.Listado_pais(), "idpais", "descripcion", us.idpais);
                return View(us);
            }
            ViewBag.mensaje = usersDL.Registrar_users(us);
            return RedirectToAction("Index", "Account");
        }

        public ActionResult UserS()
        {
            ViewBag.User = session.getSession("usuario");
            if (ViewBag.User == "")
            {
                return RedirectToAction("Index", "Account");
            }
            else
            {
                UserDatos obj = new UserDatos();
                return View(obj.userDatos());
            }
        }
        public ActionResult Close()
        {
            session.destroySession();
            return RedirectToAction("UserS", "User");
        }



        ////////////////////////////////////////////////////


        public ActionResult convertirImagen(string id_producto)
        {
            var img_producto = db.Productos.Where(x => x.id_producto == id_producto).FirstOrDefault();

            return File(img_producto.img_producto, "image/jpeg");
        }


        public ActionResult Registrar_Producto()
        {
            ViewBag.idcategoria = new SelectList(usersDL.Listado_categoria(), "idcategoria", "desc_categoria");
            ViewBag.idmarca = new SelectList(usersDL.Listado_marca(), "idmarca", "desc_marca");
            return View();
        }


        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Registrar_Producto([Bind(Include = "id_producto,idmarca,idcategoria,nombre_producto,preciof_producto,desc_producto")] Producto producto, HttpPostedFileBase img_producto)
        {
            if (img_producto != null && img_producto.ContentLength > 0)
            {
                byte[] imageData = null;
                using (var binaryProducto = new BinaryReader(img_producto.InputStream))
                {
                    imageData = binaryProducto.ReadBytes(img_producto.ContentLength);
                }
                //setear la imagen a la entidad que se creara
                producto.img_producto = imageData;
            }
            ViewBag.idcategoria = new SelectList(usersDL.Listado_categoria(), "idcategoria", "desc_categoria", producto.idcategoria);
            ViewBag.idmarca = new SelectList(usersDL.Listado_marca(), "idmarca", "desc_marca", producto.idmarca);
            ViewBag.mensaje = usersDL.Registrar_producto(producto);
            return RedirectToAction("Index", "Home");
        }
    }
    }