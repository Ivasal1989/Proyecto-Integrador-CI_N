using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using MARKETPLACE.Datos;

namespace MARKETPLACE.Models
{
    public class UserLogin
    {
        public String usuario { get; set; }
        public String email { get; set; }
        public String password { get; set; }

        RocketMarketsEntities user = new RocketMarketsEntities();

        public bool login()
        {
            var query = from u in user.Users
                        where u.email == email && u.password == password
                        select u;
            if (query.Count() > 0)
            {
                var datos = query.ToList();
                foreach (var Data in datos)
                {
                    usuario= Data.usuario;
                }
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}