# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: array of values
# Output:one random value from that array
# Steps:
# 1. initialize variables
# 2. find the length of the array and return that as number of sides
# 3. declare tha rand function on the length of the array, call the array with that number as an index
# 4. return that value as a random side

# Initial Solution

# class Die
#   def initialize(labels)
#   	if labels.empty?
#       raise ArgumentError.new("Array cannot be empty")
#     end
#     @labels = labels
#   end

#   def sides
#     return @labels.length
#   end

#   def roll
#     index = rand(@labels.length)
#     return @labels[index]
#   end
# end



# Refactored Solution
class Die
  def initialize(labels)
  	raise ArgumentError.new("Array cannot be empty") if labels.empty?
    @labels = labels
  end

  def sides
    return @labels.length
  end

  def roll
    return @labels[rand(@labels.length)]
  end
end







# Reflection
=begin
	
What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
There were a few differences. Praticularly in the functioning aspect of this die class. This one is a bit more complex. However there was not that much logic to change beside accomodating for the array.
What does this exercise teach you about making code that is easily changeable or modifiable? 
It taught me that making classes is very useful when it comes to making code that is easily modifyable. If you have a class you can simply change the blueprint instead of having to change every object
What new methods did you learn when working on this challenge, if any?
When researching I found out about the shuffle method I could use on an array but decided against it I fell like using that would make my code less DRY. So i decided against it.
What concepts about classes were you able to solidify in this challenge?
I was able to view classes like printing blocks or blueprints everything that somes from them is an instance of them and has features like them. For example ever die will have the sides and roll feature just like every subaru will have the same engine parts listd in its blueprint.

	
=end


