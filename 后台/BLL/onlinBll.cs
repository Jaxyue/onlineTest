using DAl;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace BLL
{
    public class onlinBll<T>
    {
        subjectDal sDal = new subjectDal();
        public virtual DataTable FindAll(T t) {
            string tableName = t.GetType().Name;
            string sql = "select * from " + tableName+" where 1=1";
            return sDal.FindAll(sql);
        }
    }
}
