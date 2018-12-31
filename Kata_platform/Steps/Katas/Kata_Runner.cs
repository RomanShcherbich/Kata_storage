using System;
using System.Reflection;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Kata_platform.Steps.Katas.Solutions;

namespace Kata_platform.Steps.Common
{
    /*TestClass*/
    public class Kata_Runner
    {
        public string Kata_Name_par { get; set; }
        public List<string> Multi_input { get; set; }
        private Kata_Code execution = new Kata_Code();

        /*Kata Exucuting Method*/
        public string Kata_Execution()
        {
            object[] kata_input = new object[Multi_input.Count];
            kata_input = Multi_input.ToArray();
            MethodInfo MethodRun = execution.GetType().GetMethod(Kata_Name_par);

            try
            {
                return Convert.ToString(MethodRun.Invoke(execution, kata_input));
            }
            catch (Exception ex)
            {
                Console.WriteLine("ERROR class '{0}' failed with error: '{1}'", MethodInfo.GetCurrentMethod().ToString(), ex.Message);
                return "Kata_Execution ERROR";
            }
        }
    }
}
