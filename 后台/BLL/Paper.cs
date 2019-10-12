using DAl;
using Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
   public class Paper
    {
       subjectDal sal = new subjectDal();

       public DataTable getAll() {
           string sql = "select optionId,optionName,optionA,optionB,optionC,optionD,optionCorrect from optionStem where isDelete=0";
           return sal.FindAll(sql);
       }

       public bool add(optionStem os) {
           string sql = @"insert optionStem values('"+os.optionName+"','" + os.optionA + "','" + os.optionB + "','" + os.optionC + "','" + os.optionD + "','" + os.optionCorrect + "',5,0,"+os.pId+")";
           return sal.updata(sql);
       }

       public bool remove(int id) {
           string sql = "update optionStem set isDelete=1 where optionId=" + id+"";
           return sal.updata(sql);
       }

       public bool Modify(optionStem os) {
           string sql = @"update optionStem set optionName='" + os.optionName + "',optionA='" + os.optionA + "',optionB='" + os.optionB + "',optionC='" + os.optionC + "',optionD='" + os.optionD + "',optionCorrect='" + os.optionCorrect + "'  where optionId=" + os.optionId;
           return sal.updata(sql);
       }

    }
}
