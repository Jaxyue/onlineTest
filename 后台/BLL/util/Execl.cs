using NPOI.SS.UserModel;
using NPOI.XSSF.UserModel;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAl;

namespace BLL.Util
{
    public class Execl<T>
    {
        public static XSSFWorkbook getExecl(T t)
        {
            //iToal it = new iToal();
            string tableName = t.GetType().Name;
            string sql = "select * from " + tableName;
            DataTable dt = DBHelper.GetDataTable(sql,CommandType.Text);
            XSSFWorkbook workbook = new XSSFWorkbook();
            ISheet sheet = workbook.CreateSheet(tableName);
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    IRow row = sheet.CreateRow(i);
                    for (int j = 0; j < dt.Columns.Count; j++)
                    {
                        row.CreateCell(j).SetCellValue(dt.Rows[i][j].ToString());
                    }
                }

                return workbook;

        }
    }
}