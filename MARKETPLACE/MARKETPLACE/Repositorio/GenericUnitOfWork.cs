using MARKETPLACE.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MARKETPLACE.Repositorio
{
    public class GenericUnitOfWork:IDisposable
    {
        private RocketMarkets2Entities DBEntity = new RocketMarkets2Entities();
        public Mirepositorio<tbl_EntityType> GetRepositoryInstance<tbl_EntityType>() where tbl_EntityType : class
        {
            return new GenericRepository<tbl_EntityType>(DBEntity);
        }

        public void SaveChanges()
        {
            DBEntity.SaveChanges();
        }

        protected virtual void Dispose( bool disposing)
        {
            if (!this.disposed)
            {
                if (disposing)
                {
                    DBEntity.Dispose();
                }
            }
            this.disposed = true;
        }

        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }

        private bool disposed = false;
    
    }
}