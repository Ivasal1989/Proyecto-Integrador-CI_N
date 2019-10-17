using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using MARKETPLACE.Entity;
using MARKETPLACE.SQLServer;

namespace MARKETPLACE.Models
{
    public class UsersDL
    {
        UsersDAO usersDAO = new UsersDAO();

        public string Registrar_users(Uxsers us)
        {
            return usersDAO. Registrar_users(us);
        }
        public List<Uxsers> Listado_users()
        {
            return usersDAO.Listado_users();
        }
        public List<Pais> Listado_pais()
        {
            return usersDAO.Listado_pais();
        }

        /////////////////////////////////////
        ///
         ////////////////////////////////////
        public string Registrar_producto(Producto pro)
        {
            return usersDAO.Registrar_producto(pro);
        }

        public List<Marca> Listado_marca()
        {
            return usersDAO.Listado_marca();
        }
        public List<Categoria> Listado_categoria()
        {
            return usersDAO.Listado_categoria();
        }
    }
}