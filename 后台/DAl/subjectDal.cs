using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAl
{
    public class subjectDal:DBHelper
    {
        public DataTable FindAll(string sql) {
            return DBHelper.GetDataTable(sql, CommandType.Text);
        }
        public bool updata(string sql) {
            return DBHelper.ExecuteCommand(sql, CommandType.Text);
        }
    }
}
