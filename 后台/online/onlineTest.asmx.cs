using BLL;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Services;
using Newtonsoft.Json;
using System.Web.Script.Serialization;
using Model;
using System.Data;

namespace online
{
    /// <summary>
    /// onlineTest 的摘要说明
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // 若要允许使用 ASP.NET AJAX 从脚本中调用此 Web 服务，请取消注释以下行。 
    // [System.Web.Script.Services.ScriptService]
    public class onlineTest : System.Web.Services.WebService
    {

        [WebMethod]
        public void Test()
        {
            optionTest op = new optionTest();
            string Name = Context.Request.QueryString["userName"];
            string pwd = Context.Request.QueryString["pwd"];
            Context.Response.Write(op.getTest(Name,pwd));
            Context.Response.End();
        }

        [WebMethod]
        public void Answer() {
            optionTest op = new optionTest();
            //StreamReader reader = new StreamReader(Context.Request.InputStream);
            //string str = reader.ReadToEnd();

            string answer = Context.Request.QueryString["answer"].ToString();
            string name = Context.Request.QueryString["Name"].ToString();
            string user = Context.Request.QueryString["user"].ToString();
            string pass = Context.Request.QueryString["passw"].ToString();

            string[] optioName = answer.Split(',');
            string[] ranswer = name.Split(',');
            int Test = op.Answer(optioName,ranswer,user,pass);
           
            Context.Response.Write(Test);
            Context.Response.End();

        }

        [WebMethod]
        public void Fraction() {
            optionTest op = new optionTest();
            DataTable dt = op.FractionManage();
            string jsonStr = JsonConvert.SerializeObject(dt);
            Context.Response.Write(jsonStr);
            Context.Response.End();
        }
    }
}
