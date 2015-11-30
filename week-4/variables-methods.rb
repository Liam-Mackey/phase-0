puts "Whats your first name?"
first_name = gets.chomp

puts "Whats your middle name?"
middle_name = gets.chomp

puts "What about your last name?"
last_name = gets.chomp

puts "Well hello #{first_name} #{middle_name} #{last_name}!"

puts "#{first_name} whats your favorite number?"
num = gets.chomp

better_num = num.to_i + 1

puts "Well #{first_name} #{better_num} is a better number!"
puts "Goodbye!"

# How do you define a local variable?
# you define a local variable by  typing its name  which starts with a lowercase letter or underscore
# then you set it equal to a value as i did with the variable first_name which was set to the user input
#variables are basically storage space for information that can be reused, they are very helpful.

# How do you define a method?
#You define a method by typing def followed by the method name and its parameters, not all methods have to have parameters
#Then you write what you want the method to do inside its body, on the line below its definintion
# then you should type end on a new line that ends the method.

# What is the difference between a local variable and a method?
# A variable is a storage space for a peice of information they are usually part of a class, i.e. Inetger, String, Boolean etc.
# a method is an action that can be taken. Think of a variable as being a litlle boy jim and jump being a method.
# we can call the method jump and give it the the boy jim therfore making jim jump. Think of methods as actions and variables as information.

# How do you run a ruby program from the command line?\
# ruby file-name.rb 

# How do you run an RSpec file from the command line?
# rspec file-name

# What was confusing about this material? What made sense?
# the hardest thing about this material was rspec. I had some trouble with it thinking i copied something wrong
#turns out i just forgot the return statement haha!
#I find it all pretty straight forward but Rspec trips me up sometimes.

#Links to my challenges
# https://github.com/Liam-Mackey/phase-0/blob/master/week-4/address/my_solution.rb
# https://github.com/Liam-Mackey/phase-0/blob/master/week-4/math/my_solution.rb
