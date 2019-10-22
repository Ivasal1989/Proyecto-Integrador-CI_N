using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using MARKETPLACE.SQLServer;
using MARKETPLACE.Entity;

using System.Data.SqlClient;
using System.Data;


namespace MARKETPLACE.Models
{
	public class ProductoDAO
	{
		Conexion cn = new Conexion();

		//public string Login()
		//{
		//	SqlCommand acceso = new SqlCommand("", cn.getcn);
		//	if (acceso.Count() > 0)
		//	{
		//		var datos = acceso.ExecuteNonQuery();
		//		foreach (var Data in datos)
		//		{
		//			Producto = Data.Producto;
		//		}
		//		return true;
		//	}
		//	else
		//	{
		//		return false;
		//	}			
		//}

		public List<Producto> Listado_producto()
		{
			List<Producto> lista = new List<Producto>();

			SqlCommand cmd = new SqlCommand("USP_LIST_PROD", cn.getcn);
			cmd.CommandType = CommandType.StoredProcedure;
			cn.getcn.Open();
			SqlDataReader dr = cmd.ExecuteReader();
			while (dr.Read())
			{
				Producto pro = new Producto();
				pro.id_producto = dr.GetString(0);
				pro.desc_marca = dr.GetString(1);
				pro.desc_categoria = dr.GetString(2);
				pro.nombre_producto = dr.GetString(3);
				pro.img_producto = (byte[])dr["img_producto"];
				pro.preciof_producto = dr.GetDecimal(5);
				pro.desc_producto = dr.GetString(6);
				lista.Add(pro);
		}
		dr.Close();
			cn.getcn.Close();
			return lista;
		}

		public Producto Detalle_producto(string id)
		{
			return Listado_producto().Where(c => c.id_producto == id).FirstOrDefault();
		}

        public string Eliminar_producto(Producto pro)
        {
            string msg = "";
            cn.getcn.Open();
            SqlCommand cmd = new SqlCommand("DELETE_PRODUCTO", cn.getcn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@COD_PRO", pro.id_producto);
            cmd.ExecuteNonQuery();
            cn.getcn.Close();
            return msg;
        }
    }
}