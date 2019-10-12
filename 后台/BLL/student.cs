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
   public class student:onlinBll<Student>
    {
       subjectDal sdl = new subjectDal();
       public override DataTable FindAll(Student t)
       {
          string TableName = t.GetType().Name;
          string sql = string.Format(@"select s.stuId,userName,fName,pName,g.gNo,cName from
 Student s  left join Faculty f on s.fId=f.fId 
 left join Professional p 
 on f.fId=p.fId left join Grade g 
 on s.gNo=g.gNo left join Class c on c.gNo=g.gNo where s.isDelete=0 group by s.stuId,userName,fName,pName,g.gNo,c.cName");
           return sdl.FindAll(sql);
       }
       public DataTable Faculty() {
           string sql = "select fName from Faculty";
           return sdl.FindAll(sql);
       }
       
       public DataTable Professional(int type) {
           if (type == 0)
           {
               type = 100;
           }
           if (type == 1)
           {
               type = 110;
           }
           if (type == 2)
           {
               type = 120;
           }
           if (type == 3)
           {
               type = 130;
           }
           if (type == 4)
           {
               type = 140;
           }
           string sql = "select pName from Professional where fId = "+type;
           return sdl.FindAll(sql);
       }

       public DataTable Grade() { 
       string  sql="select gNo from Grade group by gNo";
           return sdl.FindAll(sql);
       }
       public DataTable Class(string Professional, int Grade)
       {
           string sql = "select cName from Class c join Professional p on c.pId=p.pId  where p.pName='"+Professional+"' and gNo="+Grade;
           return sdl.FindAll(sql);
       }

       public DataTable query(string Professional, int Grade,string Class) {

           string sql = string.Format(@" select s.stuId,userName,fName,pName,g.gNo,cName from
 Student s  left join Faculty f on s.fId=f.fId 
 left join Professional p 
 on f.fId=p.fId left join Grade g 
 on s.gNo=g.gNo left join Class c on c.gNo=g.gNo where g.gNo=" + Grade + " and pName='" + Professional + "' and cName='" + Class + "' group by s.stuId,userName,fName,pName,g.gNo,c.cName");
           return sdl.FindAll(sql);

       }

       public bool remove(int stuId) {
           string sql = "update Student set isDelete=1 where stuId=" + stuId;
           return sdl.updata(sql);
       }
    }
}
