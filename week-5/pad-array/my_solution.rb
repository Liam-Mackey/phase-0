# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? array, min_size(non-negative integer), value
# What is the output? (i.e. What should the code return?) array
# What are the steps needed to solve the problem?
# Step 1: Get user input (array, min_size, value)
# Step 2: If array is greater than or equal to the minimum size, return array
# Step 3: ans = min_size - array.length
# Step 4: ans.times(array.push(value))
# 1. Initial Solution
# def pad!(array, min_size, value = nil) #destructive
#   if array.length >= min_size || min_size == 0 
#     return array
#   else
#     ans = min_size - array.length
#     ans.times{array.push(value)}
#   end
#   return array
# end


# p pad!([1,2,3],2)

#  def pad(array, min_size, value = nil) #non-destructive
#    final_array = []
#    if array.length >= min_size || min_size == 0
#      return array.clone
#    else
#      final_array = Array.new(min_size - array.length, value)
#      ans = array + final_array
#    end
#    return ans
#  end

# p pad([1,2,3,4], 6 ,)

# 3. Refactored Solution
 def pad!(array, min_size, value = nil) #destructive
   if array.length >= min_size || min_size == 0 
     return array
   else
     array.insert(array.last, *Array.new([ min_size - array.length].max, value))
   end
   return array
 end


 def pad(array, min_size, value = nil) #non-destructive
   final_array = []
   if array.length >= min_size || min_size == 0
     return array.clone
   else
     final_array = array.clone.fill(value, array.length...min_size)
   end
   p array
   return final_array
 end

# 4. Reflection
=begin
  
Were you successful in breaking the problem down into small steps?
Very much so me and my pair spent a lot of time psuedocoding and making sure we had a working solution before we started coding.
Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
Fairly easily, everything worked as planned for our pad! method but our pad method we rand into some issues with the return statment and had to change our code a bit.
Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
Our initial solution for pad! was perfect but for the non destructive  method we needed to work on it a bit more. But we totally succeded in making effective methods. We kept on not returning a different array, so we figured out we needed to use the clone method.
When you refactored, did you find any existing methods in Ruby to clean up your code?
My pair taught me some awesome methods. First we used .clone which clones an array. Then we used .fill and .insert to put new values in our arrays.
How readable is your solution? Did you and your pair choose descriptive variable names?
Very readable we used descriptive variable names like final_array. At least I think thats pretty descriptive.
What is the difference between destructive and non-destructive methods in your own words?
A non destructive method does not change the original object it creates a new one and applies the method to that new object. A destructive method alters the original object. Kinda like a sticker versus a tattoo onyour arm.
  
=end