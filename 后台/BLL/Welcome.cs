using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;
using DAl;
using System.Data;

namespace BLL
{
   public class Welcome
    {
       subjectDal sl = new subjectDal();
       public bool reseter(reseter re) {

           string sql = "update "+re.type+" set pwd = '"+re.npwd+"' where userName ='"+re.userName+"' and pwd ='"+re.cpwd+"'";
           return sl.updata(sql);
       }
       public DataTable show() {
           string sql = "select * from staffInfo";
           return sl.FindAll(sql);
       }
    }
}
