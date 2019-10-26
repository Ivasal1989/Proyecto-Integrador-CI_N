using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace MARKETPLACE.Entity
{
    public class Uxsers
    {
       public string id { get; set; }
	   [Required(ErrorMessage = "Campo Requerido")]			
	   public string nombre { get; set; }
	  [Required(ErrorMessage = "Campo Requerido")]
		public string apellido { get; set; }
       public int idpais { get; set; } 
       public string usuario { get; set; }
       public string email { get; set; }
       public string password { get; set; }


    }
}