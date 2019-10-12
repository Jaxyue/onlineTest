using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.IO;
using BLL;
using Newtonsoft.Json;
using Model;
using System.Data;
using NPOI.XSSF.UserModel;

namespace online
{
    /// <summary>
    /// welcome 的摘要说明
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // 若要允许使用 ASP.NET AJAX 从脚本中调用此 Web 服务，请取消注释以下行。 
    // [System.Web.Script.Services.ScriptService]
    public class welcome : System.Web.Services.WebService
    {
        //重置密码
        [WebMethod]
        public void reset()
        {
            Welcome wl=new Welcome();
            StreamReader reader = new StreamReader(Context.Request.InputStream);
            string str = reader.ReadToEnd();
            reseter res = JsonConvert.DeserializeObject<reseter>(str);
            bool result = wl.reseter(res);
            if (result)
            {
                Context.Response.Write(result);
            }
            else
            {
                Context.Response.Write(result);
            }
            Context.Response.End();
        }
        [WebMethod]
        //显示表格
        public void show() {
            Welcome wl = new Welcome();
            DataTable dt = wl.show();
            Context.Response.Write(JsonConvert.SerializeObject(dt));
            Context.Response.End();
        }
        //导出所有数据到磁盘
        [WebMethod]
        public void gettable()
        {
            //接受表格
            XSSFWorkbook wb = BLL.Util.Execl<staffInfo>.getExecl(new staffInfo());
            //把表格输出到前台
            //创建请求头
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
            Context.Response.AddHeader("Content-disposition", "attachment;filename=staffinfo.xlsx");
            //二进制输出流
            Context.Response.BinaryWrite(data);
            //关闭文件流
            wb.Close();
            fsout.Close();
            Context.Response.Flush();
            Context.Response.End();
        }

        //导出当前页数据到磁盘
       
       
    }
}
