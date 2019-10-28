using MARKETPLACE.DAL;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MARKETPLACE.Models
{
    public class CategoriaDetalle
    {
        public int idcategoria { get; set; }
        [Required(ErrorMessage = "Nombre de Categoria Requerido")]
        [StringLength(100, ErrorMessage = "Minimo 3 y minimo 5 y maximo 100 caracteres", MinimumLength = 3)]
        public string desc_categoria { get; set; }
        public Nullable<bool> IsActive { get; set; }
        public Nullable<bool> IsDelete { get; set; }
    }

    public class ProductoDetalle
    {

        public string id_producto { get; set; }
        [Required(ErrorMessage = "Nombre de Producto Requerido")]
        [StringLength(100, ErrorMessage = "Minimo 3 y minimo 5 y maximo 100 caracteres", MinimumLength = 3)]
        public Nullable<int> idmarca { get; set; }
        [Required]
        [Range(1, 50)]
        public Nullable<int> idcategoria { get; set; }
        public Nullable<bool> IsActive { get; set; }
        public Nullable<bool> IsDelete { get; set; }
        public Nullable<System.DateTime> fechaCreado { get; set; }
        public Nullable<System.DateTime> fecaModificado { get; set; }
        public string nombre_producto { get; set; }
        public string img_producto { get; set; }
        [Required]
        [Range(typeof(decimal), "1","200000", ErrorMessage ="Precio Invalida")]
        public decimal preciof_producto { get; set; }
        public Nullable<bool> IsFeatured { get; set; }
        [Required(ErrorMessage = "Descripciob de Producto Requerido")]
        public string desc_producto { get; set; }
        [Required]
        [Range(typeof(int), "1","500",ErrorMessage ="Cantidad Invalida")]
        public Nullable<int> cantidad { get; set; }

        public virtual categoria categoria { get; set; }
       // public virtual marca marca { get; set; }

        public SelectList Categoria { get; set; }
    }
}