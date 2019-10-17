using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace MARKETPLACE.SQLServer
{
    public class Conexion
    {
        SqlConnection cn = new SqlConnection("server=ivasal; database=RocketMarkets; uid=sa; pwd=katetodd");

        public SqlConnection getcn
        {
            get { return cn; }
        }
    }
}