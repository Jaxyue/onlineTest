using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAl;
using Model;
using System.Reflection;

namespace BLL
{
   public class LoginBll
    {
       subjectDal sDal = new subjectDal();
       public bool query( Account at) { 
       string TableName=at.type;
       string Name=at.userName;
       string Pwd=at.pwd;
       string sql="select * from  "+TableName+"  where userName='"+Name+"' and pwd='"+Pwd+"'";
       DataTable dt=sDal.FindAll(sql);
           if (dt.Rows.Count>0)
	{
        string sq = "select Access from  " + TableName + "  where userName='" + Name + "' and pwd='" + Pwd + "'";
        string menu = sDal.FindAll(sq).Rows[0][0].ToString();
        return true;
	}
           else
	{
         return false;
	}
       }

       public string Menu(Account at)
       {
           PropertyInfo[] ps = at.GetType().GetProperties();
           string TableName = at.type;
           string Name = at.userName;
           string Pwd = at.pwd;
           string sql = "select " + ps[3].Name + " from  " + TableName + "  where userName = '" +Name+ "' and pwd ='" + Pwd+ "'";
           DataTable dt = sDal.FindAll(sql);
           string str = dt.Rows[0][0].ToString();
           return str;
       }
    }
}
