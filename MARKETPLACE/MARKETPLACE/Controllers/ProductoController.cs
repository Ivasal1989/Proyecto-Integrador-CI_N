using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

using MARKETPLACE.Models;
using MARKETPLACE.Datos;
using MARKETPLACE.Entity;
using MARKETPLACE.SQLServer;
using System.IO;
using System.Drawing;
using System.Drawing.Imaging;

namespace MARKETPLACE.Controllers
{
	public class ProductoController : Controller
	{

		UsersDL usersDL = new UsersDL();
		ProductoDL productoDL = new ProductoDL();
		private conexionDB db = new conexionDB();
		RocketMarketsEntities Entity = new RocketMarketsEntities();

		/////////////////////////////////////////////////////////////////////////////////////////
		///////////////////////////////////////////////////////////////////////////////////////////
		//public ActionResult ConvertirImagen_producto(int id_producto)
		//{
		//	var img_producto = productoDL.Listado_producto().Where(x => x.id_producto == id_producto).FirstOrDefault();
		//	return File(img_producto.img_producto, "image/jpeg");
		//}
		///////////////////////////////////////////////////////////////////////////////////////////
		///////////////////////////////////////////////////////////////////////////////////////////
		//public ActionResult Listado_producto()
		//{
		//	return View(productoDL.Listado_producto());
		//}
		///////////////////////////////////////////////////////////////////////////////////////////
		///////////////////////////////////////////////////////////////////////////////////////////
		//public ActionResult Detalle_producto(int id)
		//{
		//	return View(productoDL.Detalle_producto(id));
		//}
		///////////////////////////////////////////////////////////////////////////////////////////
		///////////////////////////////////////////////////////////////////////////////////////////
		//public ActionResult convertirImagen(int id_producto)
		//{
		//	var img_producto = db.Productos.Where(x => x.id_producto == id_producto).FirstOrDefault();

		//	return File(img_producto.img_producto, "image/jpeg");
		//}
		//public ActionResult Registrar_Producto()
		//{
		//	ViewBag.idcategoria = new SelectList(usersDL.Listado_categoria(), "idcategoria", "desc_categoria");
		//	ViewBag.idmarca = new SelectList(usersDL.Listado_marca(), "idmarca", "desc_marca");
		//	return View();
		//}
		//[HttpPost]
		//[ValidateAntiForgeryToken]
		//public ActionResult Registrar_Producto([Bind(Include = "id_producto,idmarca,idcategoria,nombre_producto,preciof_producto,desc_producto")] Producto producto, HttpPostedFileBase img_producto)
		//{
		//	if (img_producto != null && img_producto.ContentLength > 0)
		//	{
		//		byte[] imageData = null;
		//		using (var binaryProducto = new BinaryReader(img_producto.InputStream))
		//		{
		//			imageData = binaryProducto.ReadBytes(img_producto.ContentLength);
		//		}
		//		//setear la imagen a la entidad que se creara
		//		producto.img_producto = imageData;
		//	}
		//	ViewBag.idcategoria = new SelectList(usersDL.Listado_categoria(), "idcategoria", "desc_categoria", producto.idcategoria);
		//	ViewBag.idmarca = new SelectList(usersDL.Listado_marca(), "idmarca", "desc_marca", producto.idmarca);
		//	ViewBag.mensaje = usersDL.Registrar_producto(producto);
		//	return RedirectToAction("Listado_producto", "Producto");
		//}
		///////////////////////////////////////////////////////////////////////////////////////////
		///////////////////////////////////////////////////////////////////////////////////////////
		//public ActionResult Eliminar_producto(int id)
		//{
		//	Producto pro = productoDL.Detalle_producto(id);
		//	string mensaje = productoDL.Eliminar_producto(pro);
		//	return RedirectToAction("Listado_producto");
		//}
	}
}