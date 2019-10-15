using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

using MARKETPLACE.Models;
using MARKETPLACE.Entity;

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

	}
}