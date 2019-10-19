using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using MARKETPLACE.Entity;

namespace MARKETPLACE.SQLServer
{
    public class conexionDB : DbContext
    {
        public DbSet<Producto> Productos { get; set; }
    }
}