
# Implement a Reverse Polish Notation Calculator


# I worked on this challenge [by myself, with: ].

# Pseudocode

# Input: string of rpn notation
# Output: number
# Steps:
# Initialize
# turn string into array
# delete spaces
# create new array
# push integer values into array
# perform operation on values



# Initial Solution

# class RPNCalculator
  
#   def initialize(str)
#     @str = str
#   end
  
#   def evaluate
#     @vals = @str.split(" ")
#     @arr = []
#     @vals.each do |x|
#       if x == "+"
#         num2 = @arr.pop
#         num1 = @arr.pop
#         @arr.push(num1 + num2)
#       elsif x == "*"
#         num2 = @arr.pop
#         num1 = @arr.pop
#         @arr.push(num1 * num2)
#       elsif x == "-"
#         num2 = @arr.pop
#         num1 = @arr.pop
#         @arr.push(num1 - num2)
#       else
#         @arr.push(x.to_i)
#       end
#     end
#     return @arr.pop
        
#   end
  
  
# end



# 4. Refactored Solution

class RPNCalculator
  
  # def initialize(str)
  #   @str = str
  # end
  
  
  def evaluate(str)

    operators = ["+", "-", "*"]
    nums = []
    array = str.split(" ")

      array.each do |i|
        if operators.include?(i)
          num2 = nums.pop
          num1 = nums.pop

          nums.push(num1.send(i, num2))
        else
          nums.push(i.to_i)
        end
      end

    nums.pop
   end
  
end

# # calc = RPNCalculator.new

# p calc.evaluate('70 10 4 + 5 * -')



# Reflection