
# Largest Integer

# I worked on this challenge [by myself, with: ].

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def largest_integer(list_of_nums)
  ans = nil
  list_of_nums.each_index do |x|
    if x == 0 
      ans = list_of_nums[x]
    elsif list_of_nums[x] > ans
      ans = list_of_nums[x]
    end
  end
  return ans
end

# the easier way to do it would be to use the max method for arrays.