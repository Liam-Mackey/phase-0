# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode
# Input: array
# Output: new array which has been fizzbuzzed
# steps:
# 1. set NEW ARRAY = FOR EACH item in array
	# IF item mod 3 == 0
		# set that item to fizz
	# ELSE IF item mod 5 == 0
		# set that item to buzz
	# ELSE IF item mod 15 == 0
		# set that item to fizzbuzzed
	# end
# end
# return new Array




# Initial Solution

# def super_fizzbuzz(array)
# 	ans = array.map do |x|
# 		if x % 15 == 0
# 			x = "FizzBuzz"
# 		elsif x % 5 == 0
# 			x = "Buzz"
# 		elsif x % 3 == 0 
# 			x = "Fizz"
# 		else
# 			x
# 		end
# 	end
# 	return ans
# end


# puts super_fizzbuzz([3,5,10,4,26,30,15])


# Refactored Solution
def super_fizzbuzz(array)
	ans = array.map do |x|
		ans3 = x % 3 == 0
		ans5 = x % 5 ==0
		case 
		when (ans3 and ans5)
			x = "FizzBuzz"
		when ans5
			x = "Buzz"
		when ans3
			x = "Fizz"
		else
			x
		end
	end
	return ans
end

puts super_fizzbuzz([3,5,10,4,26,30,15])




# Reflection
=begin

What concepts did you review in this challenge?
I revied the map method and other enumerables as well as object oreinted programming I had a good time and think I am ready for DBC.
What is still confusing to you about Ruby?
The most comfusing part of ruby for me is the case statement and the iteration over nested loops both of these topics still confuse me.
What are you going to study to get more prepared for Phase 1?
Definetly more about flow control and built in methods.

=end