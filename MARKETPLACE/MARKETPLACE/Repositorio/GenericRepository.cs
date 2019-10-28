using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Linq.Expressions;
using System.Web;
using MARKETPLACE.DAL;

namespace MARKETPLACE.Repositorio
{
    public class GenericRepository<tbl_Entity> : Mirepositorio<tbl_Entity> where tbl_Entity : class
    {
        DbSet<tbl_Entity> _dbSet;

        private RocketMarkets2Entities _DBEntity;

        public GenericRepository(RocketMarkets2Entities DBEntity)
        {
            _DBEntity = DBEntity;
            _dbSet = DBEntity.Set<tbl_Entity>();
        }
       // IEnumerable<tbl_Entity> GetProducto()
        //{
        //    return _dbSet.ToList();
        //}


        public void Add(tbl_Entity entity)
        {
            _dbSet.Add(entity);
            _DBEntity.SaveChanges();
        }

        public int GetAllrecordCount()
        {
            return _dbSet.Count();
        }

        public IEnumerable<tbl_Entity> GetAllRecords()
        {
            return _dbSet.ToList();
        }

        public IQueryable<tbl_Entity> GetAllRecordsIQueryable()
        {
            return _dbSet;
        }

        public tbl_Entity GetFirstorDefault(int recordId)
        {
            return _dbSet.Find(recordId);
        }

        public tbl_Entity GetFirstorDefaultByParameter(Expression<Func<tbl_Entity, bool>> wherePredict)
        {
            return _dbSet.Where(wherePredict).FirstOrDefault();
        }

        public IEnumerable<tbl_Entity> GetListParameter(Expression<Func<tbl_Entity, bool>> wherePredict)
        {
            return _dbSet.Where(wherePredict).ToList();
        }

        public IEnumerable<tbl_Entity> GetResultBySqlprocedure(string query, params object[] parameters)
        {
            if (parameters != null)
            {
                return _DBEntity.Database.SqlQuery<tbl_Entity>(query, parameters).ToList();
            }
            else
                return _DBEntity.Database.SqlQuery<tbl_Entity>(query).ToList();
        }

        public void InactiveAndDeleteMarkByWhereClause(Expression<Func<tbl_Entity, bool>> wherePredict, Action<tbl_Entity> ForEachPredict)
        {
            _dbSet.Where(wherePredict).ToList().ForEach(ForEachPredict);
        }

        public void Remove(tbl_Entity entity)
        {
            if (_DBEntity.Entry(entity).State == EntityState.Detached)
                _dbSet.Attach(entity);
            _dbSet.Remove(entity);
        }

        public void RemovebyWhereClause(Expression<Func<tbl_Entity, bool>> wherePredict)
        {
            tbl_Entity entity = _dbSet.Where(wherePredict).FirstOrDefault();
            Remove(entity);
        }

        public void RemoveRangeBywhereClause(Expression<Func<tbl_Entity, bool>> wherePredict)
        {
            List<tbl_Entity> entity = _dbSet.Where(wherePredict).ToList();
            foreach (var ent in entity)
            {
                Remove(ent);
            }
        }

        public void Update(tbl_Entity entity)
        {
            _dbSet.Attach(entity);
            _DBEntity.Entry(entity).State = EntityState.Modified;
            _DBEntity.SaveChanges();
        }

        public void UpdateByWhereClause(Expression<Func<tbl_Entity, bool>> wherePredict, Action<tbl_Entity> ForEachPredict)
        {
            _dbSet.Where(wherePredict).ToList().ForEach(ForEachPredict);
        }

        public IEnumerable<tbl_Entity> GetRecordsToShow(int PageNo, int PageSize, int CurrentPage, Expression<Func<tbl_Entity, bool>> wherePredict, Expression<Func<tbl_Entity, int>> orderByPredict)
        {
            if (wherePredict != null)
            {
                return _dbSet.OrderBy(orderByPredict).Where(wherePredict).ToList();
            }
            else
            {
                return _dbSet.OrderBy(orderByPredict).ToList();
            }
        }

        IEnumerable<tbl_Entity> Mirepositorio<tbl_Entity>.GetProducto()
        {
            return _dbSet.ToList();
        }
    }
}