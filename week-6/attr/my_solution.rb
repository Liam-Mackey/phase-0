
#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input: nothing
# Output: greeting
# Steps:
# 0. write attr_accessor methods
# 1.initialize name to Liam
# initailize name in greeting class to name in NameData class
	# create new instance of NameData
	# set the new name to the instance's name 
# print out the custom greeting


class NameData
	attr_accessor :name
	def initialize 
		@name = "Liam"
	end

end


class Greetings
	def initialize
		name_class = NameData.new
		@name_greet = name_class.name
	end

	def greet 
		puts "Hello #{@name_greet}! It's so nice to see you!"
	end

end

hi = Greetings.new

p hi.greet



# Reflection

=begin 

What are these methods doing?
They are setting and modifying data that is inside the class outside of the class
How are they modifying or returning the value of instance variables?
They are fundemantally changing the variables then returning the changed variables using unique methods for that purpose.

What changed between the last release and this release?
The attr_reader allowed us to read the age variable which we previously needed a method for.
What was replaced?
The what_is_age method was deleted and replaced with attr_reader :age
Is this code simpler than the last?
Way simplier it is easer to understand and less code

What changed between the last release and this release?
We added a attr_writer to let us get rid of the change age method
What was replaced?
The change age method with attr_writer
Is this code simpler than the last?
Yes it is less code and easier to follow.

What changed between the last release and this release?
We got rid of attr_reader and attr_writer and added attr_accessor
What was replaced?
the reader and reader and writer functions now e just have accessor
Is this code simpler than the last?
Yes. it is less code and if you know waht you are doing it is easier to follow


What is a reader method?
A reader method allows an instance variable to be viewed outside a class. Instead of having to write a method to view the variable
What is a writer method?
A writer method allows a instance variable to be changed outside a class instead of writing a method to change the variable. 
What do the attr methods do for you?
They make it much easier to write classes because they significantly decrease the amount of code needed to view and change instance variables
Should you always use an accessor to cover your bases? Why or why not?
What is confusing to you about these methods?
Nothing much I actually find them less confusing then doing the old fasioned way. it is less typing and it is easier to do.



=end