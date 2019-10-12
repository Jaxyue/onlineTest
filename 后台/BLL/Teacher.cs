using DAl;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
   public class Teacher
    {
       subjectDal sdl = new subjectDal();
       public DataTable findAll() {
           string sql = "select tId,userName,fName,pName,gNo,cName from Teacher t join Faculty f on t.fId=f.fId join Professional p on p.pId=t.pId join Class c on c.cId=t.cId where t.isDelete=0";
           return sdl.FindAll(sql);
       }
       public bool Modify(Model.Teachers ts) {
           string sql = @"update Teacher set userName='" + ts.userName + "',fId=" + ts.fName + ",pId=" + ts.pName + ",cId=" + ts.cName + "  where tId=" + ts.tId;
           return sdl.updata(sql);
       }
       public bool remove(int tId)
       {
           string sql = "update Teacher set isDelete=1 where tId=" + tId;
           return sdl.updata(sql);
       }

    }
}
