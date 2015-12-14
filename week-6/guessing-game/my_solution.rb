# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: a answer, a guess
# Output: a symbol stating whether the guess was low, high, or correct, a boolean stating whether the game has been solved 
# Steps:
# 1. Initialize variables
# 2. initialize guess
# 3. IF guess is greater than answer return :high
# ELSIF guess is less than answer return :low
# ELSE return :correct
# END 
# IF the last guess returned correct then solved equals true
# ELSE solved returns false
# END 



# Initial Solution

# class GuessingGame
#   def initialize(answer)
#     @answer = answer
#   end

#   def guess(guess)
#   	@guess = guess
#   	if @guess > @answer
#   		return :high
#   	elsif @guess < @answer
#   		return :low
#   	else
#   		return :correct
#   	end
#   end

#   def solved? 
#   	if @guess == @answer
#   		return true
#   	else
#   		return false
#   	end
#   end
#   # Make sure you define the other required methods, too
# end




# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
  	@guess = guess
  	if @guess > @answer
  		return :high
  	elsif @guess < @answer
  		return :low
  	else
  		return :correct
  	end
  end

  def solved? 
  	return @guess == @answer? true : false
  end
  # Make sure you define the other required methods, too
end





# Reflection
=begin 



How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
Instance variables and methods are sort of like the charcteristics and actions of real world objects for example a dog has a name and it can bark. Nam ecould be the instance variable for the dog and bark its method. So as you can see classes represent the charcteristics and actions of real world objects.
When should you use instance variables? What do they do for you?
WHen you want to communicate information between methods in a class. They allow for easy communication of variables between methods in classes.
Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
Flow control is used similarly to how you would give directions to some one. You woudl say drive five feet if you see a sign that says main street turn right. If not then keep going. I found flow control fairly easy to use in this challenge and I loved learning about the terenary operator!
Why do you think this code requires you to return symbols? What are the benefits of using symbols?
Becuase symbols cannot be changed so there for they take up less memory space and cannot be modified by certain methods like strings can. And if you had a long guessing game you would use a lot of symbols which is okay because they only take up one memory location.








=end