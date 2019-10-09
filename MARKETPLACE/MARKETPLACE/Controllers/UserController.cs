using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

using MARKETPLACE.Models;

namespace MARKETPLACE.Controllers
{
	public class UserController : Controller
	{
		SessionData session = new SessionData();

		public ActionResult UserS()
		{
			ViewBag.User = session.getSession("usuario");
			if (ViewBag.User == "")
			{
				return RedirectToAction("Index", "Account");
			}
			else
			{
				return View();
			}
		}


		public ActionResult Close()
		{
			session.destroySession();
			return RedirectToAction("UserS", "User");
		}

	}
}