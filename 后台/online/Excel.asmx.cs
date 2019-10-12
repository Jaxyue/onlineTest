using DAl;
using NPOI.SS.UserModel;
using NPOI.XSSF.UserModel;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace online
{
    /// <summary>
    /// Excel 的摘要说明
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // 若要允许使用 ASP.NET AJAX 从脚本中调用此 Web 服务，请取消注释以下行。 
    // [System.Web.Script.Services.ScriptService]
    public class Excel : System.Web.Services.WebService
    {
        //成绩表
        [WebMethod]
        public void Achievement()
        {
            string sql = string.Format(@"select s.stuId,userName,fName,pName,g.gNo,cName,Fraction from
 Student s  left join Faculty f on s.fId=f.fId 
 left join Professional p 
 on f.fId=p.fId left join Grade g 
 on s.gNo=g.gNo left join Class c on c.gNo=g.gNo where s.isDelete=0 group by s.stuId,userName,fName,pName,g.gNo,c.cName,Fraction");
            DataTable dt = DBHelper.GetDataTable(sql, CommandType.Text);
            XSSFWorkbook workbook = new XSSFWorkbook();
            ISheet sheet = workbook.CreateSheet("Achievement");
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                IRow row = sheet.CreateRow(i);
                for (int j = 0; j < dt.Columns.Count; j++)
                {
                    row.CreateCell(j).SetCellValue(dt.Rows[i][j].ToString());
                }
            }
            XSSFWorkbook wb = workbook;
            FileStream fsout = new FileStream(HttpContext.Current.Server.MapPath("test.xlsx"), FileMode.Create, FileAccess.Write);
            //写入文件
            wb.Write(fsout);
            FileStream fsIn = new FileStream(HttpContext.Current.Server.MapPath("test.xlsx"), FileMode.Open, FileAccess.Read);
            int len = (int)fsIn.Length;
            byte[] data = new byte[len];
            //读取文件
            fsIn.Read(data, 0, len);
            //添加响应头，标明文件长度
            Context.Response.AddHeader("Content-Length", len.ToString());
            //添加响应头，标明下载
            Context.Response.AddHeader("Content-disposition", "attachment;filename=Achievement.xlsx");
            //二进制输出流
            Context.Response.BinaryWrite(data);
            //关闭文件流
            wb.Close();
            fsout.Close();
            Context.Response.Flush();
            Context.Response.End();

        }

        [WebMethod]
        //试题表
        public void Paper()
        {
            string sql = string.Format(@"select optionId,optionName,optionA,optionB,optionC,optionD,optionCorrect from optionStem where isDelete=0");
            DataTable dt = DBHelper.GetDataTable(sql, CommandType.Text);
            XSSFWorkbook workbook = new XSSFWorkbook();
            ISheet sheet = workbook.CreateSheet("Paper-Test");
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                IRow row = sheet.CreateRow(i);
                for (int j = 0; j < dt.Columns.Count; j++)
                {
                    row.CreateCell(j).SetCellValue(dt.Rows[i][j].ToString());
                }
            }
            XSSFWorkbook wb = workbook;
            FileStream fsout = new FileStream(HttpContext.Current.Server.MapPath("Paper.xlsx"), FileMode.Create, FileAccess.Write);
            //写入文件
            wb.Write(fsout);
            FileStream fsIn = new FileStream(HttpContext.Current.Server.MapPath("Paper.xlsx"), FileMode.Open, FileAccess.Read);
            int len = (int)fsIn.Length;
            byte[] data = new byte[len];
            //读取文件
            fsIn.Read(data, 0, len);
            //添加响应头，标明文件长度
            Context.Response.AddHeader("Content-Length", len.ToString());
            //添加响应头，标明下载
            Context.Response.AddHeader("Content-disposition", "attachment;filename=Paper-Test.xlsx");
            //二进制输出流
            Context.Response.BinaryWrite(data);
            //关闭文件流
            wb.Close();
            fsout.Close();
            Context.Response.Flush();
            Context.Response.End();
        
        }

        [WebMethod]
        //学生表
        public void student() {
            string sql = string.Format(@"select s.stuId,userName,fName,pName,g.gNo,cName from
 Student s  left join Faculty f on s.fId=f.fId 
 left join Professional p 
 on f.fId=p.fId left join Grade g 
 on s.gNo=g.gNo left join Class c on c.gNo=g.gNo where s.isDelete=0 group by s.stuId,userName,fName,pName,g.gNo,c.cName");
            DataTable dt = DBHelper.GetDataTable(sql, CommandType.Text);
            XSSFWorkbook workbook = new XSSFWorkbook();
            ISheet sheet = workbook.CreateSheet("student-Test");
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                IRow row = sheet.CreateRow(i);
                for (int j = 0; j < dt.Columns.Count; j++)
                {
                    row.CreateCell(j).SetCellValue(dt.Rows[i][j].ToString());
                }
            }
            XSSFWorkbook wb = workbook;
            FileStream fsout = new FileStream(HttpContext.Current.Server.MapPath("student.xlsx"), FileMode.Create, FileAccess.Write);
            //写入文件
            wb.Write(fsout);
            FileStream fsIn = new FileStream(HttpContext.Current.Server.MapPath("student.xlsx"), FileMode.Open, FileAccess.Read);
            int len = (int)fsIn.Length;
            byte[] data = new byte[len];
            //读取文件
            fsIn.Read(data, 0, len);
            //添加响应头，标明文件长度
            Context.Response.AddHeader("Content-Length", len.ToString());
            //添加响应头，标明下载
            Context.Response.AddHeader("Content-disposition", "attachment;filename=student-Test.xlsx");
            //二进制输出流
            Context.Response.BinaryWrite(data);
            //关闭文件流
            wb.Close();
            fsout.Close();
            Context.Response.Flush();
            Context.Response.End();
        }
    }
}
