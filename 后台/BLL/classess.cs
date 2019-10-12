using DAl;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
   public class classess
    {
       subjectDal sal = new subjectDal();
       public DataTable FindAll() {
           string sql = "select * from Class";
           return sal.FindAll(sql);
       }
    }
}
