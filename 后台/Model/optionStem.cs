using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
   public class optionStem
    {
        public int optionId { get; set; }
        public string optionName { get; set; }
        public string optionA { get; set; }
        public string optionB { get; set; }
        public string optionC { get; set; }
        public string optionD { get; set; }
        public string optionCorrect { get; set; }
        public int optionScore { get; set; }
        public bool isDelete { get; set; }
        public int pId { get; set; }
    }
}
