using System;
using System.Collections.Generic;
using TechTalk.SpecFlow;
using NUnit.Framework;

namespace Kata_platform.Steps.Common
{
    [Binding]
    public class The_Coupon_CodeSteps
    {
        private Kata_Runner kata = new Kata_Runner();
        private string result;
        List<string> Parameters = new List<string>();

        [Given(@"I have entered ""(.*)"" into the kata ""(.*)""")]
        public void GivenIHaveEnteredIntoTheKata(string kata_input, string kata_name)
        {
            Parameters.Add(kata_input);
            kata.Multi_input = Parameters;
            kata.Kata_Name_par = kata_name;
        }

        [When(@"I execute selected kata solution")]
        public void WhenIExecuteSelectedKata()
        {
            result = kata.Kata_Execution();
        }

        [Then(@"the result should be ""(.*)"" on the screen")]
        public void ThenTheResultShouldBeOnTheScreen(string expectedResult)
        {
            Assert.AreEqual(expectedResult, result);
        }

        [Given(@"I have also entered ""(.*)""")]
        public void GivenIHaveAlsoEnteredAnotherInput(string kata_input)
        {
            Parameters.Add(kata_input);
            kata.Multi_input = Parameters;
        }
    }
}
