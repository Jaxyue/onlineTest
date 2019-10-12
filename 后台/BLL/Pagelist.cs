using DAl;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
   public class Pagelist
    {
       subjectDal sdl = new subjectDal();
       public DataTable findAchievement() {
           string sql = string.Format(@"select s.stuId,userName,fName,pName,g.gNo,cName,Fraction from
 Student s  left join Faculty f on s.fId=f.fId 
 left join Professional p 
 on f.fId=p.fId left join Grade g 
 on s.gNo=g.gNo left join Class c on c.gNo=g.gNo where s.isDelete=0 group by s.stuId,userName,fName,pName,g.gNo,c.cName,Fraction");
           return sdl.FindAll(sql);

       }

       
    }
}
