using DAl;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
   public class Professional
    {
       subjectDal sdl = new subjectDal();
       public DataTable findAll() {
           string sql = "select * from Professional";
           return sdl.FindAll(sql);
       
       }
    }
}
