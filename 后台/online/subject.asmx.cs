using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using BLL;
using System.Data;
using Model;
namespace online
{
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    
    public class subject : System.Web.Services.WebService
    {
        subjectBll sbll = new subjectBll();
  
        [WebMethod]
        public void findeAll()
        {
            DataTable dt = sbll.FindAll(new Model.subject());
            Context.Response.Write(dt);
            Context.Response.End();
        }
    }
}
