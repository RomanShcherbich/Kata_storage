using System;
using TechTalk.SpecFlow;

namespace Kata_platform.Core
{
    class Logger
    {
        public void Info(string message)
        {
            Console.WriteLine("INFO: {0}", message);
        }
        public void Info(string message, params object[] args)
        {
            var info = string.Format(message, args);
            Console.WriteLine("INFO: {0}", info);
    }
    }
}
