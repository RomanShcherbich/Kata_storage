﻿Feature: Validate_Credit_Card_Number

	#In this Kata, you will implement the Luhn Algorithm, which is used to help validate credit card numbers.
	#
	#Given a positive integer of up to 16 digits, return true if it is a valid credit card number, and false if it is not.
	#
	#Here is the algorithm:
	#
	#Double every other digit, scanning from right to left, starting from the second digit (from the right).
	#
	#Another way to think about it is: if there are an even number of digits, double every other digit starting with the first; if there are an odd number of digits, double every other digit starting with the second:
	#
	#1714 ==> [1*, 7, 1*, 4] ==> [2, 7, 2, 4]
	#
	#12345 ==> [1, 2*, 3, 4*, 5] ==> [1, 4, 3, 8, 5]
	#
	#891 ==> [8, 9*, 1] ==> [8, 18, 1]
	#If a resulting number is greater than 9, replace it with the sum of its own digits (which is the same as subtracting 9 from it):
	#
	#[8, 18*, 1] ==> [8, (1+8), 1] ==> [8, 9, 1]
	#
	#or:
	#
	#[8, 18*, 1] ==> [8, (18-9), 1] ==> [8, 9, 1]
	#Sum all of the final digits:
	#
	#[8, 9, 1] ==> 8 + 9 + 1 = 18
	#Finally, take that sum and divide it by 10. If the remainder equals zero, the original credit card number is valid.
	#
	#  18 (modulus) 10 ==> 8 , which is not equal to 0, so this is not a valid credit card number
	#The input will be a string of spaces and 16 digits 0..9


Scenario: 01_Valid
	Given I have entered "4344851160521970" into the kata "Validate_Credit_Card_Number"
	When I execute selected kata solution
	Then the result should be "true" on the screen

Scenario: 02_Valid_with_separators
	Given I have entered "0768 2757 5685 6340" into the kata "Validate_Credit_Card_Number"
	When I execute selected kata solution
	Then the result should be "true" on the screen

Scenario: 03_Invalid
	Given I have entered "4344851160511970" into the kata "Validate_Credit_Card_Number"
	When I execute selected kata solution
	Then the result should be "false" on the screen

Scenario: 04_Invalid_separators
	Given I have entered "4344 8511 6051 1970" into the kata "Validate_Credit_Card_Number"
	When I execute selected kata solution
	Then the result should be "false" on the screen

Scenario: 05_Invalid_not_16_with_separators
	Given I have entered "4344 8511 601 1970" into the kata "Validate_Credit_Card_Number"
	When I execute selected kata solution
	Then the result should be "false" on the screen

Scenario: 06_Invalid_not_16_with_separators
	Given I have entered "477 073 360" into the kata "Validate_Credit_Card_Number"
	When I execute selected kata solution
	Then the result should be "false" on the screen
	
Scenario: 07_Invalid_not_16_with_separators
	Given I have entered "5422 0148 5514" into the kata "Validate_Credit_Card_Number"
	When I execute selected kata solution
	Then the result should be "true" on the screen