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
		public List<Producto> Listado_producto()
		{
			List<Producto> lista = new List<Producto>();

			SqlCommand cmd = new SqlCommand("select * from producto", cn.getcn);
			cn.getcn.Open();
			SqlDataReader dr = cmd.ExecuteReader();
			while (dr.Read())
			{
				Producto pro = new Producto();
				pro.id_producto = dr.GetString(0);
				pro.idmarca = dr.GetString(1);
				pro.idcategoria = dr.GetString(2);
				//pro = new Producto();
				//pro.id_producto = dr.GetString(0);
				//pro.marca = new Marca()
				//{
				//	idmarca = Convert.ToString(dr["idmarca"]),
				//	desc_marca = dr["desc_marca"].ToString()
				//};
				//pro.categoria = new Categoria()
				//{
				//	idcategoria = Convert.ToString(dr["idcategoria"]),
				//	desc_categoria = dr["desc_categoria"].ToString()
				//};
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
	}
}