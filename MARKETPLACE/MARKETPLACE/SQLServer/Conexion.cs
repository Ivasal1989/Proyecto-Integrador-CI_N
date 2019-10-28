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
        SqlConnection cn = new SqlConnection("server=DESKTOP-5T7BADV; database=RocketMarkets2;Integrated Security=SSPI");

        public SqlConnection getcn
        {
            get { return cn; }
        }
    }
}