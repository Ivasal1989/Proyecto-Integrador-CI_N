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
    public class UsersDAO
    {
        Conexion cn = new Conexion();
        public List<Pais> Listado_pais()
        {
            List<Pais> lista = new List<Pais>();
            SqlCommand cmd = new SqlCommand("select * from pais", cn.getcn);
            cn.getcn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Pais re = new Pais();
                re.idpais = dr.GetInt32(0);
                re.descripcion = dr.GetString(1);
                lista.Add(re);
            }
            dr.Close();
            cn.getcn.Close();
            return lista;
        }

        public List<Uxsers> Listado_users()
        {
            List<Uxsers> lista = new List<Uxsers>();
            SqlCommand cmd = new SqlCommand("select * from Users", cn.getcn);
            cn.getcn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Uxsers re = new Uxsers();
                re.id = dr.GetString(0);
                re.nombre = dr.GetString(1);
                re.apellido = dr.GetString(2);
                re.idpais = dr.GetInt32(3);
                re.usuario= dr.GetString(4);
                re.email = dr.GetString(5);
                re.password = dr.GetString(6);
                lista.Add(re);
            }
            dr.Close();
            cn.getcn.Close();
            return lista;
        }

        public string Registrar_users(Uxsers us)
        {
            string msg = "";
            cn.getcn.Open();
            SqlCommand cmd = new SqlCommand("USP_Registro_users", cn.getcn);
            cmd.CommandType = CommandType.StoredProcedure;
            //cmd.Parameters.AddWithValue("@cod", us.codigo);
            cmd.Parameters.AddWithValue("@nom", us.nombre);
            cmd.Parameters.AddWithValue("@apellido", us.apellido);
            cmd.Parameters.AddWithValue("@idpais", us.idpais);
            cmd.Parameters.AddWithValue("@usu", us.usuario);
            cmd.Parameters.AddWithValue("@email", us.email);
            cmd.Parameters.AddWithValue("@contra", us.password);
            cmd.ExecuteNonQuery();
            cn.getcn.Close();
            return msg;
        }



        /////////////////////////////////////////
        public List<Marca> Listado_marca()
        {
            List<Marca> lista = new List<Marca>();
            SqlCommand cmd = new SqlCommand("select * from marca", cn.getcn);
            cn.getcn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Marca re = new Marca();
                re.idmarca = dr.GetString(0);
                re.desc_marca = dr.GetString(1);
                lista.Add(re);
            }
            dr.Close();
            cn.getcn.Close();
            return lista;
        }
        public List<Categoria> Listado_categoria()
        {
            List<Categoria> lista = new List<Categoria>();
            SqlCommand cmd = new SqlCommand("select * from categoria", cn.getcn);
            cn.getcn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Categoria re = new Categoria();
                re.idcategoria = dr.GetInt32(0);
                re.desc_categoria = dr.GetString(1);
                lista.Add(re);
            }
            dr.Close();
            cn.getcn.Close();
            return lista;
        }


        public string Registrar_producto(Producto producto)
        {
            string msg = "";
            cn.getcn.Open();
            SqlCommand cmd = new SqlCommand("USP_Registro_producto", cn.getcn);
            cmd.CommandType = CommandType.StoredProcedure;
            //cmd.Parameters.AddWithValue("@cod", us.codigo);
            cmd.Parameters.AddWithValue("@idmarca", producto.idmarca);
            cmd.Parameters.AddWithValue("@idcategoria", producto.idcategoria);
            cmd.Parameters.AddWithValue("@nomp", producto.nombre_producto);
            cmd.Parameters.AddWithValue("@img", producto.img_producto);
            cmd.Parameters.AddWithValue("@precio", producto.preciof_producto);
            cmd.Parameters.AddWithValue("@descripcion", producto.desc_producto);
            cmd.ExecuteNonQuery();
            cn.getcn.Close();
            return msg;
        }
    }
}