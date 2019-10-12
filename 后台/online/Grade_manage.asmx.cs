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
    /// Grade_manage 的摘要说明
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // 若要允许使用 ASP.NET AJAX 从脚本中调用此 Web 服务，请取消注释以下行。 
    // [System.Web.Script.Services.ScriptService]
    public class Grade_manage : System.Web.Services.WebService
    {
        Grade ge = new Grade();
        [WebMethod]
        public void findAll()
        {

            DataTable dt = ge.findAll();
            Context.Response.Write(JsonConvert.SerializeObject(dt));
            Context.Response.End();
        }
    }
}
