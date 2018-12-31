Feature: Write_Number_in_Expanded_Form
#Write Number in Expanded Form
#You will be given a number and you will need to return it as a string in 

Scenario: 01_one-digit_value
	Given I have entered "7" into the kata "Write_Number_in_Expanded_Form"
	When I execute selected kata solution
	Then the result should be "7" on the screen

Scenario: 02_one-digit_value
	Given I have entered "0" into the kata "Write_Number_in_Expanded_Form"
	When I execute selected kata solution
	Then the result should be "0" on the screen

Scenario: 03_10-digit_value
	Given I have entered "7000070304" into the kata "Write_Number_in_Expanded_Form_by_array"
	When I execute selected kata solution
	Then the result should be "7000000000 + 70000 + 300 + 4" on the screen
	
Scenario: 04_double-digit_value
	Given I have entered "12" into the kata "Write_Number_in_Expanded_Form"
	When I execute selected kata solution
	Then the result should be "10 + 2" on the screen

Scenario: 05_five-digit_value
	Given I have entered "70304" into the kata "Write_Number_in_Expanded_Form"
	When I execute selected kata solution
	Then the result should be "70000 + 300 + 4" on the screen

Scenario: 06_10-digit_value
	Given I have entered "7000070304" into the kata "Write_Number_in_Expanded_Form"
	When I execute selected kata solution
	Then the result should be "7000000000 + 70000 + 300 + 4" on the screen