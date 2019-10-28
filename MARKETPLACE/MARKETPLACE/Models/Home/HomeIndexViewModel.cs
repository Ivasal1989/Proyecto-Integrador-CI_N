using MARKETPLACE.DAL;
using MARKETPLACE.Repositorio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MARKETPLACE.Models.Home
{
    public class HomeIndexViewModel
    {
        public GenericUnitOfWork _unitOfWork = new GenericUnitOfWork();


        public IEnumerable<producto> listOfProducts { get; set; }

        public HomeIndexViewModel CreateModel()
        {

            return new HomeIndexViewModel() {
                listOfProducts = _unitOfWork.GetRepositoryInstance<producto>().GetAllRecords()
                };
        }
    }
}