/*
PERSON 2: Translate user Stories into Psuedocode
Input: list of numbers
output: sum, mean, median
steps: 
A. Declare an object called calc:
	1. Give it a function named SUM that accpets an ARRAY as a parameter
		1. Set a variable TOTAL equal to zero
		2.FOR when i (our counter variable) starts at zero; while i is less than the length of our ARRAY; we are incresing it by one each time 
			1.TOTAL += ARRAY[i]
		3.RETURN TOTAL

	2.Give our object a function named MEAN that accepts an ARRAY as a parameter
		1.RETURN the result of (calling the SUM function we just wrote with our ARRAY as a parameter then dividing it by the length of our ARRAY)
	3.Give our object a function called MEDIAN that takes an ARRAY as a parameter
		1.Set a variable to PLACE equal to ARRAY's length divided by 2 round down the answer if its a decimal 
		2.IF ARRAY is even 
			1.RETURN  ((ARRAY[PLACE] plus ARRAY[PLACE + 1]) divided by 2)
		3.ELSE 
			1. RETURN ARRAY[PLACE]

B. CAll our methods to check if our code is good.
*/