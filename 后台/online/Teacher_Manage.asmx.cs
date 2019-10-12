using BLL;
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
    /// Teacher_Manage 的摘要说明
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // 若要允许使用 ASP.NET AJAX 从脚本中调用此 Web 服务，请取消注释以下行。 
    // [System.Web.Script.Services.ScriptService]
    public class Teacher_Manage : System.Web.Services.WebService
    {
        Teacher tr = new Teacher();

        [WebMethod]
        public void FindAll()
        {
            DataTable dt = tr.findAll();
            Context.Response.Write(JsonConvert.SerializeObject(dt));
            Context.Response.End();
        }

        [WebMethod]
        public void modify() {

            StreamReader reader = new StreamReader(Context.Request.InputStream);
            var str = reader.ReadToEnd();
            Model.Teachers ts = JsonConvert.DeserializeObject<Model.Teachers>(str);
            bool result = tr.Modify(ts);
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
        public void remove() {

            int tId = Convert.ToInt32(Context.Request.QueryString["ID"]);
            bool result = tr.remove(tId);
            if (result)
            {
                Context.Response.Write("成功!");
            }
            else
            {
                Context.Response.Write("失败!");
            }
            Context.Response.End();
        }
    }
}
