using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MARKETPLACE.Controllers
{
    public class VentasController : Controller
    {
        // GET: Ventas
        public ActionResult Detalle_Producto()
        {
            return View();
        }
    }
}