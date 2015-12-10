# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? an array 

# What is the output? (i.e. What should the code return?) a single-element array (of most frequent value
# What are the steps needed to solve the problem?
# create a new hash and set the default value to zero
# iterate through array count number of times an element appears
# create new array
# find maximum value
# iterate through hash; if value is equal to max value, push key into the new array
# return array


# # 1. Initial Solution
# def mode(list)
#   mode = []
#   frequency = Hash.new(0)
#   list.each do |el| 
#     frequency[el] += 1
#   end
#   frequency.each do |k,v|
#     if v == frequency.values.max
#       mode.push(k)
#     end
#   end
#   return mode
# end

# 3. Refactored Solution
def mode(list)
  mode = []
  frequency = Hash.new(0)
  list.each { |el| frequency[el] += 1 }
  frequency.each { |k,v| mode.push(k) if v == frequency.values.max }
  return mode
end


# 4. Reflection
=begin 

Which data structure did you and your pair decide to implement and why?
We decided upon using a hash that way we could store the elemnents and their frequencies fairly easily
Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 
I actually felt that I have really improved my psuedocode. However I still hope to get better at it. But yes I do feel that I have improved since the last time I paired.
What issues/successes did you run into when translating your pseudocode to code?
I had a fairly easy time translating my psuedo code into code. I feel that If the driver just types while the navigator reads the psuedocode then you can implement code very fast.
What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
We tried using the group_by method but couldn't figure it out. We eventually were creating so many lines of code just to make it work we started going back to the each method.


=end