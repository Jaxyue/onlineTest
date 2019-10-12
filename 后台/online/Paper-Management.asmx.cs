using BLL;
using Model;
using Newtonsoft.Json;
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
    /// Paper_Management 的摘要说明
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // 若要允许使用 ASP.NET AJAX 从脚本中调用此 Web 服务，请取消注释以下行。 
    // [System.Web.Script.Services.ScriptService]
    public class Paper_Management : System.Web.Services.WebService
    {
        
        [WebMethod]
        public void getAll()
        {
            Paper pr=new Paper();
            DataTable dt = pr.getAll();
            string jsonStr = JsonConvert.SerializeObject(dt);
            Context.Response.Write(jsonStr);
            Context.Response.End();   
        }

        [WebMethod]
        public void remove() {
            Paper pr = new Paper();
            int id = Convert.ToInt32(Context.Request.QueryString["ID"]);
            bool relust = pr.remove(id);
            if (relust)
            {
                Context.Response.Write("删除成功");
            }
            else{
            
                Context.Response.Write("失败!");
            }
            Context.Response.End();
        }

        [WebMethod]
        public void Modify() {
            Paper pr = new Paper();
            StreamReader reader = new StreamReader(Context.Request.InputStream);
            var str = reader.ReadToEnd();
            optionStem os = JsonConvert.DeserializeObject<optionStem>(str);
            bool result = pr.Modify(os);
            if (result)
            {
            }
            else
            {
                Context.Response.Write("失败!");
            }
            Context.Response.End();
        }

        [WebMethod]
        //添加
        public void add()
        {
            Paper pr = new Paper();
            StreamReader reader = new StreamReader(Context.Request.InputStream);
            string str = reader.ReadToEnd();
            optionStem os = JsonConvert.DeserializeObject<optionStem>(str);
            bool result = pr.add(os);
            if (result)
            {

            }
            else
            {

            }

        }
    }
}
