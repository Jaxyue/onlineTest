using BLL;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace online
{
    /// <summary>
    /// Faculty 的摘要说明
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // 若要允许使用 ASP.NET AJAX 从脚本中调用此 Web 服务，请取消注释以下行。 
    // [System.Web.Script.Services.ScriptService]
    public class Faculty : System.Web.Services.WebService
    {
        Faculty_Manage fm = new Faculty_Manage();
        [WebMethod]
        public void getAl()
        {
            DataTable dt = fm.findAll();
            Context.Response.Write(JsonConvert.SerializeObject(dt));
            Context.Response.End();
        }
    }
}
