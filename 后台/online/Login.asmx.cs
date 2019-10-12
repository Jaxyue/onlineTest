using BLL;
using Model;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Services;
using Newtonsoft.Json;
using DAl;
using BLL.util;

namespace online
{
    /// <summary>
    /// Login 的摘要说明
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
   
    public class Login : System.Web.Services.WebService
    {
        LoginBll Log = new LoginBll();
        [WebMethod]
        public void login()
        {
            menuUtil ml = new menuUtil();
            StreamReader reader = new StreamReader(Context.Request.InputStream);
            string str = reader.ReadToEnd();
            Account at = JsonConvert.DeserializeObject<Account>(str);
            bool result = Log.query(at);
            //string menu = Log.Menu(at);
            if (result)
            {
               string menu = ml.getMenu(at);
                Dictionary<string, Object> getMenu = new Dictionary<string, Object>();
                getMenu.Add("tMenu", menu);
                Context.Response.Write(menu);
            }
            else
            {
                Context.Response.Write(result);
            }
            
            Context.Response.End();
        }
    }
}
