using MARKETPLACE.Datos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MARKETPLACE.Entity
{
	public class UserDatos
	{
		RocketMarketsEntities user = new RocketMarketsEntities();
		public List<UserDatosModel> userDatos()
		{
			List<UserDatosModel> List = new List<UserDatosModel>();
			var query = from u in user.Users select u;
			var listaData = query.ToList();
			foreach (var Data in listaData)
			{
				List.Add(new UserDatosModel()
				{
					id = Data.id,
					nombre = Data.nombre,
					apellido = Data.apellido,
					idpais = Data.idpais,
					usuario = Data.usuario,
					email = Data.email,
					password = Data.password
				});
			}
			return List;
		}


	}


	public class UserDatosModel
		{
			public String id { get; set; }
			public String nombre { get; set; }
			public String apellido { get; set; }
			public int idpais { get; set; }
			public String usuario { get; set; }
			public String email { get; set; }
			public String password { get; set; }
		}
	
}