using System;
using System.Reflection;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Kata_platform.Core;

namespace Kata_platform.Steps.Katas.Solutions
{
    public class Kata_Code
    {
        private Logger Log = new Logger();

        /*Kata calculations*/
        #region Write_Number_in_Expanded_Form
        public string Write_Number_in_Expanded_Form_by_array(string num)
        {
            int charcount = num.ToString().Count() - 1;
            string result = String.Empty;

            List<string> Listnumbers = num.ToList().ConvertAll(f =>
            f != '0' ? 
            Convert.ToString(System.Int32.Parse(f.ToString()) * Math.Pow(10, charcount - num.ToList().IndexOf(f)))
            : null);

            foreach (string value in Listnumbers)
            {
                if (value != null)
                {
                    Log.Info("value in Listnumbers = " + value);
                }
            }
            Log.Info("num.Select((x,i) => i) = " + String.Join(" | ", num.Select((x, i) => x.ToString() + " - " + i.ToString())));

            Listnumbers.RemoveAll(x => x == null);
            result = string.Join(" + ", Listnumbers.ToArray());
            if (num.Length > 1)
                result = String.Join(" + ", num.Select((x, i) => char.GetNumericValue(x) * Math.Pow(10, num.Length - i - 1)).Where(x => x > 0));
            else
                result = num;
            Log.Info("result = " + result);
            return result;
        }
        #endregion
        #region Write_Number_in_Expanded_Form
        public string Write_Number_in_Expanded_Form(string num)
        {
            string result = num;
            string separator = " + ";
            int i = num.ToString().Count();
            if (num.Length > 1)
            {
                result = String.Empty;
                foreach (char number in num.ToString())
                {
                    --i;
                    if (System.Int32.Parse(number.ToString()) > 0)
                    {
                        result += Convert.ToString(System.Int32.Parse(number.ToString()) * Math.Pow(10, i)) + separator;
                    }
                }
                result = result.Remove(result.Count() - 3);
            }
            
            return result;
        }
        #endregion
        #region The_Coupon_Code
        public bool The_Coupon_Code(string enteredCode, string correctCode, string currentDate, string expirationDate)
        {
            DateTime Date1 = DateTime.ParseExact(currentDate, "MMMM d, yyyy",System.Globalization.CultureInfo.InvariantCulture);
            DateTime Date2 = DateTime.ParseExact(expirationDate, "MMMM d, yyyy", System.Globalization.CultureInfo.InvariantCulture);

            Log.Info("DateTime.Compare(Date1, Date2) = " + Convert.ToString(DateTime.Compare(Date1, Date2)));

            return (enteredCode.Equals(correctCode) && DateTime.Compare(Date1, Date2) <= 0);
        }
        #endregion
        #region Dubstep
        public string Dubstep(string kata_input)
        {
            Console.WriteLine("kata_input = ", kata_input.ToString());
            string result = kata_input.Replace("WUB"," ").Trim(' ');
            if (result.Contains("  ") == true)
            {
                for(; ;)
                {
                    result = result.Replace("  ", " ");
                        if (result.Contains("  ") == false)
                        break;
                }
            }
            return result;
        }
        #endregion
        #region DescendingOrder
        public string DescendingOrder(string kata_input)
        {
            string result = "";
            foreach (char number in kata_input.OrderByDescending(f => f))
            {
                result += Convert.ToString(number);
            }

            return result;
        }
        #endregion
        #region Sum_of_all_the_multiples_of_3_or_5
        public string Sum_of_all_the_multiples_of_3_or_5(string kata_input)
        {
            long sum = 0;
            int k = 0;
            int c = 0;
            for (int i = Int32.Parse(kata_input); i >= 3; i--)
            {
                if (i % 3 == 0)
                    k = i / 3;
                if (i % 5 == 0)
                    c = i / 5;
                if ((k != 0) && (c != 0))
                    break;
            }
            for (; k > 0; k--)
            {
                sum += k * 3;
            }
            for (; c > 0; c--)
            {
                if (c % 3 != 0)
                {
                    sum += c * 5;
                }
            }
            return Convert.ToString(sum);
        }
        #endregion
    }
}
