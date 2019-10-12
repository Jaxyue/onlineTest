using DAl;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using BLL;
using Model;
using System.IO;

namespace online
{
    /// <summary>
    /// student_Management 的摘要说明
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // 若要允许使用 ASP.NET AJAX 从脚本中调用此 Web 服务，请取消注释以下行。 
    // [System.Web.Script.Services.ScriptService]
    public class student_Management : System.Web.Services.WebService
    {
        
        [WebMethod]
        public void findall()
        {
            student st = new student();
            DataTable dt = st.FindAll(new Student());
            string jsonStr = JsonConvert.SerializeObject(dt);
            Context.Response.Write(JsonConvert.SerializeObject(dt));
            Context.Response.End();
        }

        [WebMethod]
        public void Faculty()
        {
            student st = new student();
            DataTable dt = st.Faculty();
            string jsonStr = JsonConvert.SerializeObject(dt);
            Context.Response.Write(JsonConvert.SerializeObject(dt));
            Context.Response.End();
        }
        [WebMethod]
        public void Professional() {
            student st = new student();
            int type =Convert.ToInt32(Context.Request.QueryString["type"]);
            DataTable dt = st.Professional(type);
            string jsonStr = JsonConvert.SerializeObject(dt);
            Context.Response.Write(JsonConvert.SerializeObject(dt));
            Context.Response.End();
            
        }
        [WebMethod]
        public void Grade() {
            student st = new student();
            //int type = Convert.ToInt32(Context.Request.QueryString["type"]);
            DataTable dt = st.Grade();
            string jsonStr = JsonConvert.SerializeObject(dt);
            Context.Response.Write(JsonConvert.SerializeObject(dt));
            Context.Response.End();

        }

        [WebMethod]
        public void Class() {
            student st = new student();
            string Professional = Context.Request.QueryString["Professional"].ToString();
            int Grade = Convert.ToInt32(Context.Request.QueryString["Grade"]);
            DataTable dt = st.Class(Professional,Grade);
            string jsonStr = JsonConvert.SerializeObject(dt);
            Context.Response.Write(JsonConvert.SerializeObject(dt));
            Context.Response.End();

        }

        [WebMethod]
        public void query() {
            student st = new student();
            
            string pro = Context.Request.QueryString["Pro"].ToString();
            int Grade = Convert.ToInt32(Context.Request.QueryString["Grade"]);
            string classes = Context.Request.QueryString["classes"].ToString();
            DataTable dt = st.query(pro,Grade,classes);
            string jsonStr = JsonConvert.SerializeObject(dt);
            if (dt.Rows.Count==0)
            {
                Context.Response.Write("无数据!");
            }
            else
            {
                Context.Response.Write(jsonStr);
            }
            Context.Response.End();

        }

        [WebMethod]
        public void remove() {
            student st = new student();
            int stuId = Convert.ToInt32(Context.Request.QueryString["ID"]);
            bool result = st.remove(stuId);
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
