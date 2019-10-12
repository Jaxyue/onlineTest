using DAl;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
   public class optionTest
    {
       //加载试题
       public string getTest(string userNam,string pwd){
           subjectDal sd = new subjectDal();
           string Test = "<ul>";
           string pid = "select s.pId from Professional p join Student s on p.pId=s.pId where userName='" + userNam + "' and pwd='" + pwd + "' ";
           DataTable de = sd.FindAll(pid);
           int pId = Convert.ToInt32(de.Rows[0][0]);
           //查询试题所有条数
           string sql = "select count(*) from optionStem where pId="+pId;
           string Tsql = "select * from optionStem o join Student s on s.pId=o.pId where s.pid="+pId;
           DataTable dt = sd.FindAll(Tsql);
           DataTable dtb=sd.FindAll(sql);
           int count =Convert.ToInt32(dtb.Rows[0][0]);
           string[] option={
            "A",
            "B",
            "C",
            "D"
           };
           for (int i = 0; i <count; i++)
           {
               int p = 0;
               Test += "<span><li><h3>" + dt.Rows[i][1].ToString()+ "</h3></li></span><label>";
               for (int j = 2; j <6; j++)
               {

                   Test += "<span><h4>" + option[p] + "<li><input type='radio' value='"+option[p]+"' name="+i+"></li>" + dt.Rows[i][j].ToString() + "</h4></span>";
                   p++;
                   if (p==4)
                   {
                       p = 0;
                   }
               }
           }
           Test += "<br /><input type='button'class='btn btn-primary' value='点击提交试卷' id='confirm' onclick='Submission()'>";
           return Test;
       }


       public int Answer(string[] optioName, string[] ranswer,string user,string passw)
       {
           subjectDal sd = new subjectDal();
           string sql = "select sum(optionScore) from optionStem where optionName='" + optioName[0] + "' and optionCorrect='" + ranswer[0] + "'";
           string count = "select count(*) from optionStem where pId=6";
           DataTable dt=sd.FindAll(count);
           int Count = Convert.ToInt32(dt.Rows[0][0]);
           for (int i = 1; i <= Count; i++)
           {
               for (int j = 1; j < optioName.Length; j++)
               {

                   sql += " or optionName='" + optioName[j] + "' and optionCorrect='" + ranswer[j] + "' ";
               }
               
           }
           DataTable rows = sd.FindAll(sql);
           int rIndex = Convert.ToInt32(rows.Rows[0][0]);
           string Fraction="update Student set Fraction="+rIndex+" where userName='"+user+"' and pwd='"+passw+"'";
           sd.updata(Fraction);
           return rIndex;
       }

       public DataTable FractionManage() {
           subjectDal sd = new subjectDal();
           string sql = string.Format(@"select s.stuId,userName,fName,pName,g.gNo,cName,Fraction from
 Student s  left join Faculty f on s.fId=f.fId 
 left join Professional p 
 on f.fId=p.fId left join Grade g 
 on s.gNo=g.gNo left join Class c on c.gNo=g.gNo where s.isDelete=0 group by s.stuId,userName,fName,pName,g.gNo,c.cName,Fraction");
           return sd.FindAll(sql);
       }
    }

}
