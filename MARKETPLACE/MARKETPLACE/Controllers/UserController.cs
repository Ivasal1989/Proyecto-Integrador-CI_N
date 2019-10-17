using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

using MARKETPLACE.Models;
using MARKETPLACE.Entity;
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


        public ActionResult ObtenerImagen(int id)
        {

            Producto pro = Producto.Find(id);
            byte[] ImagenEnBytes = pro.img_producto;

            MemoryStream ms = new MemoryStream(ImagenEnBytes);
            Image image = Image.FromStream(ms);

            ms = new MemoryStream();
            image.Save(ms, ImageFormat.Jpeg);
            ms.Position = 0;

            return File(ms, "image/jpg");

        }
        public ActionResult Registrar_Producto()
        {
            ViewBag.idcategoria = new SelectList(usersDL.Listado_categoria(), "idcategoria", "desc_categoria");
            ViewBag.idmarca = new SelectList(usersDL.Listado_marca(), "idmarca", "desc_marca");
            return View(new Producto());
        }
        [HttpPost]
        public ActionResult Registrar_Producto(Producto prod)
        {
            HttpPostedFileBase FileBase = Request.Files[0];

            WebImage image = new WebImage(FileBase.InputStream);

            prod.img_producto = image.GetBytes();

            if (!ModelState.IsValid)
            {

                ViewBag.idcategoria = new SelectList(usersDL.Listado_categoria(), "idcategoria", "desc_categoria", prod.idcategoria);
                ViewBag.idmarca = new SelectList(usersDL.Listado_marca(), "idmarca", "desc_marca", prod.idmarca);
                return View(prod);
            }



            ViewBag.mensaje = usersDL.Registrar_producto(prod);
            return RedirectToAction("Index");
            ////////////

        }
    }
    }