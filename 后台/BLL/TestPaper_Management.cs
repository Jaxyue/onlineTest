using DAl;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class TestPaper_Management
    {
        public string qTest(int pid)
        {
            subjectDal sl = new subjectDal();
            string sql = "select optionName,optionA,optionB,optionC,optionD,optionCorrect from optionStem where pId="+pid+" and  ";
            ArrayList array = new ArrayList();
            Random r = new Random();
            string Test = "<ul>";
            ArrayList list = new ArrayList();
            int k = 1;
            do
            {
                k = r.Next(1,21);
                if (!list.Contains(k))
                    list.Add(k);
            }
            while (list.Count < 20);
            sql+=" optionId="+list[0];
            for (int i = 1; i <list.Count; i++)
            {
                sql += " or optionId=" + list[i];
            }
            DataTable dt=sl.FindAll(sql);
            string[] option ={
            "A",
            "B",
            "C",
            "D"
           };
            for (int i = 0; i <20; i++)
            {
                int p = 0;
                Test += "<span><li><h3>" + dt.Rows[i][0].ToString() + "</h3></li></span><label>";
                for (int j = 1; j < 5; j++)
                {

                    Test += "<span><h4>" + option[p] + "<li><input type='radio' value='" + option[p] + "' name=" + i + "></li>" + dt.Rows[i][j].ToString() + "</h4></span>";
                    p++;
                    if (p == 4)
                    {
                        p = 0;
                    }
                }
            }
            Test += "<br /><input type='button'class='btn btn-primary' value='点击提交试卷' id='confirm' onclick='Submission()'>";
            return Test;
        }
    }
}
