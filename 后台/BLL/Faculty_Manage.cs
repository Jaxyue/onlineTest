using DAl;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
   public class Faculty_Manage
    {
       subjectDal sal = new subjectDal();
       public DataTable findAll() {
           string sql = "select * from Faculty";
           return sal.FindAll(sql);
       }
    }
}
