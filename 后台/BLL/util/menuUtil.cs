using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace BLL.util
{
   public class menuUtil
    {
       LoginBll Lb = new LoginBll();
       public string getMenu(Account at)
       {
           string[] href = {
                           "onlineTest.html",
                           "welcome.html", 
                           "Examination-Management.html",
                           "Achievement-Management.html",
                           "TestPaper-Management.html",
                           "Paper-Management.html",
                           "Faculty-Management.html",
                           "Professional-Management.html",
                           "Subject-Management.html",
                           "Grade-Management.html",
                           "Class-Management.html",
                           "Teacher-Management.html",
                           "Student-Management.html"
                           };
           string[] Test ={
                         "在线考试",
                         "个人中心", 
                         "考试管理",
                         "成绩管理",
                         "试卷管理",
                         "试题管理",
                         "院系管理",
                         "专业管理",
                         "科目管理",
                         "年级管理",
                         "班级管理",
                         "教师管理",
                         "学生管理"
                          };
           string tMenu = Lb.Menu(at);
           
           string menu = "<ul class='nav' id='main-menu'>";
           string[] str = tMenu.Split(',');
           for (int i = 0; i <str.Length; i++)
           {
               for (int j = 0; j < Test.Length; j++)
               {
                   if (str[i] == Test[j])
                   {
                       menu += "<li><a class='aves-effect waves-dark' href="+href[j]+"><i class='fa fa-dashboard'></i>"+Test[j]+"</a></li>";
                   }
                   else
                   {  
                   }
           }
           }
           menu += "</ul>";
           return menu;
       }
    }
}
