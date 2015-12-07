# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: number of sides 
# Output: a random roll, number of sides
# Steps:
# Initialize variables in class
	# set parameters equal to instance variables so that we can use them
# define sides
	# returns the number of sides declared when the die is created
# define roll
	# take a random number in between and  including one and the number of sides


# 1. Initial Solution
=begin
class Die
  def initialize(sides)
  	if sides < 1
      raise ArgumentError.new("Number of sides Must be at least 1")
    end
    @sides = sides
  end

  def sides
    return @sides
  end

  def roll
    ans = rand(@sides)
    return ans + 1
  end
end

=end


# 3. Refactored Solution

class Die
  def initialize(sides)
  	if sides < 1
      raise ArgumentError.new("Number of sides Must be at least 1")
    end
    @sides = sides
  end

  def sides
    return @sides
  end

  def roll
    return rand(@sides) + 1
  end
end






# 4. Reflection
=begin
What is an ArgumentError and why would you use one?
	An ArgumentError is a piece of text that is outputted to the console when the user breaks one of the programs rules. You would use one to prevent people from, or at least let them know not to, breaking the rules of the program. People don’t always listen though but the good thing about ArgumentError’s is that they let the user know they are doing something wrong and that is why the program is not working. Sort of like a custom error message.
What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
	besides using classes for the first time, in ruby at least, I used the rand method, which returns a random number in between 0 and the number given. What i didn’t realize though is that you have to add 1 to the result of rand otherwise you won't get back the correct range of numbers. The rspec helped me with that.
What is a Ruby class?
	A class is basically a template for objects. it defines their methods. So think of the class as being a category like “Car” cars can all do things like drive, unless they are like my 2003 subaru outback, and they have seats. These things are common to all cars so they belong to the car class. However the “Truck” class, which inherits from the car class because a truck is a type of car, can do extra stuff like “Tow liam's subaru back to the shop”. So “Truck”’s super class is car. Because a truck is a specific type of car, like a fixnum is a specific type of integer. 
Why would you use a Ruby class?
	To better organize my program. especially when I am writing long programs that need organization. They also help make code easier to read, and contribute to DRYness
What is the difference between a local variable and an instance variable?
	A local variable can only be used in the scope it was defined in an instance variable can be used by all instances of the said class.
Where can an instance variable be used?
	Inside a class and by all instances of that class. as opposed to a class variable which can be used only in the class.

=end