# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

# "Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

# def cartman_hates(thing)
#   while true
#     puts "What's there to hate about #{thing}?"
#   end
# end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# 170
# 3. What is the type of error message?
# syntax error
# 4. What additional information does the interpreter provide about this type of error?
# unexpected end of input, expecting keyword_end
# 5. Where is the error in the code?
# I believe that it is at the lack of an end statement for the while loop
# 6. Why did the interpreter give you this error?
# because there is no end statement for the while loop

# --- error -------------------------------------------------------

# south_park = nil 

# 1. What is the line number where the error occurs?
# 36
# 2. What is the type of error message?
# in <main> Name error
# 3. What additional information does the interpreter provide about this type of error?
# undefined local variable or method `south_park' for main:Object 
# 4. Where is the error in the code?
# line 36 the variable needs to be declared
# 5. Why did the interpreter give you this error?
# We either forgot to declare the variable or acccidentally put it in.

# --- error -------------------------------------------------------

# cartman()

# 1. What is the line number where the error occurs?
# 51
# 2. What is the type of error message?
# in <main> No Method Error
# 3. What additional information does the interpreter provide about this type of error?
# undefined method `cartman' for main:Object so we know cartman is the undefined method
# 4. Where is the error in the code?
# line 51 we either didn't define the method or used the wrong name 
# 5. Why did the interpreter give you this error?
# There is no method named cartman, we forgot to declare it 

# --- error -------------------------------------------------------

# def cartmans_phrase
#   puts "I'm not fat; I'm big-boned!"
# end

# cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# 66
# 2. What is the type of error message?
# Argumment error
# 3. What additional information does the interpreter provide about this type of error?
# in `cartmans_phrase': wrong number of arguments (1 for 0) we now know we dont have any arguments for the method
# 4. Where is the error in the code?
# on line 66 and line 67 we need to add an argument and make cartmans_pharse puts that argument
# 5. Why did the interpreter give you this error?
# Because we have more arguments being passed to the method then we decalred when we defined the method.

# --- error -------------------------------------------------------

# def cartman_says(offensive_message)
#   puts offensive_message
# end

# cartman_says

# 1. What is the line number where the error occurs?
# 85
# 2. What is the type of error message?
# Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# in `cartman_says': wrong number of arguments (0 for 1)  so we know we have to few arguments in our call statement, or too many arguments in our declaration.
# 4. Where is the error in the code?
# 89 we forgot to pas an argument
# 5. Why did the interpreter give you this error?
# no argument was passed for cartman_says.



# --- error -------------------------------------------------------

# def cartmans_lie(lie, name)
#   puts "#{lie}, #{name}!"
# end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# 106
# 2. What is the type of error message?
# Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# We have only one argument and the program demands two
# 4. Where is the error in the code?
# either 110 or 106 depends of what you were trying to do. If you want a name then th errors on 110 otherwise we have too many arguments on 106
# 5. Why did the interpreter give you this error?
# we have too few arguments being psssed to our method

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# 125
# 2. What is the type of error message?
# Type Error
# 3. What additional information does the interpreter provide about this type of error?
# String can't be coerced into Fixnum 
# 4. Where is the error in the code?
# line 125 I think they mean "Respect my authoritay!" * 5 which would repeat the string 5 times, what e have now makes no sense we cant multiply 5 by a string! Duh!
# 5. Why did the interpreter give you this error?
# We are preforming an impossible operation we cant multiply a number "Respect my Authoritay!" times!

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# 140
# 2. What is the type of error message?
# ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
# We are dividing a number by 0
# 4. Where is the error in the code?
# we can't divide a number by 0 thats mathematically imposeible. I think they mean 20/1
# 5. Why did the interpreter give you this error?
# We are creating an infinete loop because you could go on forever if you ask the computer how many 0's go into 20 an infinete amount!


# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# 157
# 2. What is the type of error message?
# Load Error
# 3. What additional information does the interpreter provide about this type of error?
# The computer cant find a file called cartmans_essay.md on my computer
# 4. Where is the error in the code?
# We dont have that file on my computer so we cant load it
# 5. Why did the interpreter give you this error?
# It cant down load a file it doesnt have 


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.


# Which error was the most difficult to read?
# The first one was the hardest because I didn't know what line it was on. But once you figured it out it was an easy fix.

# How did you figure out what the issue with the error was?
# I commented out the code I suspected to see if the error went away and it did so I knew my hunch was right.

# Were you able to determine why each error message happened based on the code? 
# kind of some errors like the first one were a bit tricky as with the last one, you may not ahve the file or you are just using the wrong path
# By the time I got to the last one I felt I was better at analyzing error messages, even in I cant there is always stackoverflow!


# When you encounter errors in your future code, what process will you follow to help you debug?
# I wil make sure I understand the error before changing anything and If i cant figure it our on my own I will go online but I wont mess with my code untill I know what the error means. This exercise was very helpful!
