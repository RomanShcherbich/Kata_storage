Feature: Kata_DescendingOrder

Scenario: 01_Input_21445___Output_54421
	Given I have entered "21445" into the kata "DescendingOrder"
	When I execute selected kata solution
	Then the result should be "54421" on the screen

Scenario: 02_Input_145263___Output_654321
	Given I have entered "145263" into the kata "DescendingOrder"
	When I execute selected kata solution
	Then the result should be "654321" on the screen

Scenario: 03_Input_1254859723___Output_9875543221
	Given I have entered "1254859723" into the kata "DescendingOrder"
	When I execute selected kata solution
	Then the result should be "9875543221" on the screen
