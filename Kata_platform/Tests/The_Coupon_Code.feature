Feature: The_Coupon_Code
##   Story
#	Your online store likes to give out coupons for special occasions. Some customers try to cheat the system by entering invalid codes or using expired coupons.
##	Task
#	Your mission:
#	Write a function called which verifies that a coupon code is valid, the coupon is not expired.
#
#	A coupon is no more valid on the day AFTER the expiration date. All dates will be passed as strings in this format: "MONTH DATE, YEAR".

@mytag
Scenario: 01_Input__Output_Pepperonni_valid
	Given I have entered "Pepperonni" into the kata "The_Coupon_Code"
	And I have also entered "Pepperonni"
	And I have also entered "July 9, 2015"
	And I have also entered "July 9, 2015"
	When I execute selected kata solution
	Then the result should be "True" on the screen
	
Scenario: 02_Input_Output_expired
	Given I have entered "123" into the kata "The_Coupon_Code"
	And I have also entered "123"
	And I have also entered "September 15, 2014"
	And I have also entered "September 10, 2014"
	When I execute selected kata solution
	Then the result should be "False" on the screen
	
Scenario: 03_Input_Pepperonni_invalid
	Given I have entered "Pepperonni" into the kata "The_Coupon_Code"
	And I have also entered "Pepperonni99"
	And I have also entered "September 5, 2014"
	And I have also entered "September 10, 2014"
	When I execute selected kata solution
	Then the result should be "False" on the screen