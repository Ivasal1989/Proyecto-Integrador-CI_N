﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
namespace MARKETPLACE.Entity
{
    public class Producto
    {
        public int id_producto { get; set; }


        [Display(Name = "Marca del producto")]
        public int idmarca { get; set; }


        [Display(Name = "Categoria del producto")]
        public int idcategoria { get; set; }


        [Display(Name = "Nombre del producto")]
        public string nombre_producto { get; set; }
        [Display(Name = "Imagen")]
        public byte[] img_producto { get; set; }
        [Display(Name = "Precio del producto")]
        public decimal preciof_producto { get; set; }

        [DataType(DataType.MultilineText)]
        [Display(Name = "Descripcion del producto")]
        public string desc_producto { get; set; }

        internal static Producto Find(int id)
        {
            throw new NotImplementedException();
        }
    }
}