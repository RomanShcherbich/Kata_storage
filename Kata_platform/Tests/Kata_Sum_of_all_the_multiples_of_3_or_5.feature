Feature: Kata_Sum_of_all_the_multiples_of_3_or_5

Scenario: 01_Input_is_5
	Given I have entered "5" into the kata "Sum_of_all_the_multiples_of_3_or_5"
	When I execute selected kata solution
	Then the result should be "8" on the screen

Scenario: 02_Input_is_10
	Given I have entered "10" into the kata "Sum_of_all_the_multiples_of_3_or_5"
	When I execute selected kata solution
	Then the result should be "33" on the screen

Scenario: 03_Input_is_15
	Given I have entered "15" into the kata "Sum_of_all_the_multiples_of_3_or_5"
	When I execute selected kata solution
	Then the result should be "60" on the screen

Scenario: 04_Input_is_35
	Given I have entered "35" into the kata "Sum_of_all_the_multiples_of_3_or_5"
	When I execute selected kata solution
	Then the result should be "293" on the screen

Scenario: 05_Input_is_100
	Given I have entered "100" into the kata "Sum_of_all_the_multiples_of_3_or_5"
	When I execute selected kata solution
	Then the result should be "2418" on the screen
