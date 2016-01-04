# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode
#Input: number
# output: boolean
# steps: Use formula to find answer 
# 1. set ans1 eqaul to the squareroot of 5*x^2 + 4
# 2. set ans2 equal to the squareroot of 5*x^2 -4 
# 3. IF ans1 and ans2 are both integers then
# return true
# ELSE
# return false
# Turns out that the sqrt function doesnt work on big numbers so you cant do that
# pseudocode 2
# 1. create arrat with minimum fib values
# 2. WHILE the number given is greater than the last item in the array
# take the last value in the array and set it equal to last
# take the second last and set it equal to first
# then push nto the array first, last, and first + last
# END
# IF the number give equals the last element in the array 
# return true
# ELSE
# return false



# Initial Solution

# def is_fibonacci?(num)
#   arr = [0, 1]
#   while num > arr.last
#     last = arr.pop
#     first = arr.pop
#     arr.push(first, last, first + last)
#   end
#   if num == arr.last
#     return true
#   else
#     return false
#   end
# end

# puts is_fibonacci?(22);


# Refactored Solution


def is_fibonacci?(num)
  arr = [0,1]
  while num > arr.last
    a,b = arr.pop(2)
    arr.push(a,b, a + b);
  end
  if num == arr.last then return true else return false end
end

puts is_fibonacci?(21);


# Reflection
=begin 

What concepts did you review or learn in this challenge?
I reviewd a lot of ruby array methods. However in my initial solution I learned a lot about ruby numeric methods like ceil and sqrt but sadly I also learned about the limitations of numeric methods on big numbers so i had to change my solution. now I am proud to say that I feel mush better with array methods and numeric methods.
What is still confusing to you about Ruby?
The most confusing thing is just figuring out how to solve the challenges its that abstract thinking that is the hardest. Once i have an idea of what i need to do ruby has so many built in methods that it is very easy to code. I do feel I need to brush up more on ruby built ins though.
What are you going to study to get more prepared for Phase 1?
I plan to spend most of my time studying rubys built in methods and how to use them. That way i will be a more effecient coder in phase 0

=end



