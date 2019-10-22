using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using MARKETPLACE.Entity;



namespace MARKETPLACE.Models
{
	public class ProductoDL
	{
		ProductoDAO productoDAO = new ProductoDAO();

		public List<Producto> Listado_producto()
		{
			return productoDAO.Listado_producto();
		}
		public Producto Detalle_producto(string id)
		{
			return productoDAO.Detalle_producto(id);
		}
        public string Eliminar_producto(Producto pro)
        {
            return productoDAO.Eliminar_producto(pro);
        }
    }
}