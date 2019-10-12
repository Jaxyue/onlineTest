using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL.util
{
   public class pageUtil
    {
        public int totalCount { get; set; }
        public int currentPage { get; set; }
        public int pageSize { get; set; }
        public int totalPages { get; set; }
        public int dataBegin { get; set; }
        public int dataEnd { get; set; }


        public string getPagelist()
        {
            string pageList = "";
            pageList += "<ul class='pagination text-nowrap mar-no'>";
            if (this.currentPage == 1)
            {
                pageList += "<li class='page-pre disabled'><a href='javascript:;'>&lt;</a> </li>";
            }
            else
            {
                pageList += "<li class='page-pre'><a href='javascript:;' onclick='getPre()'>&lt;</a> </li>";
            }
            for (int i = 0; i < this.totalPages; i++)
            {
                if (this.currentPage == (i + 1))
                {
                    pageList += "<li class='page-number active'><span>" + (i + 1) + "</span></li>";
                }
                else
                {
                    pageList += "<li class='page-number'><span><a href='javascript:;' onclick='list(this)'>" + (i + 1) + "</a></span></li>";
                }
            }
            if (this.currentPage == this.totalPages)
            {
                pageList += "<li class='page-next disabled'><a href='javascript:;'>&gt;</a></li>";
            }
            else
            {
                pageList += "<li class='page-next'><a href='javascript:;' onclick='getNext()'>&gt;</a></li>";
            }
            pageList += "<ul>";
            return pageList;
        }
    }
}
