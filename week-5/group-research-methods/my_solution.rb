# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  ans = source.select {|x| x.to_s.include?(thing_to_find)}
  return ans
end

def my_hash_finding_method(source, thing_to_find)
  hash = source.select {|k,v| v == thing_to_find }
  ans = hash.keys
  return ans
end

# Identify and describe the Ruby method(s) you implemented.
##I used several methods but tye predominant method used for this challenge was select.
#Select looks through every element of an array or key and value in a has and then returns any element or key value pair that returns true for the conditional
# I also used the include method whcih returns true if the string includes the argument passed to include.
# Lastly I used the keys method which returns the keys in a hash
#
#
=begin
  
rescue Exception => e
  
end
# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#I used several methods but tye predominant method used for this challenge was select.
#Select looks through every element of an array or key and value in a has and then returns any element or key value pair that returns true for the conditional
# I also used the include method whcih returns true if the string includes the argument passed to include.
# Lastly I used the keys method which returns the keys in a hash


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
##I used several methods but tye predominant method used for this challenge was select.
#Select looks through every element of an array or key and value in a has and then returns any element or key value pair that returns true for the conditional
# I also used the include method whcih returns true if the string includes the argument passed to include.
# Lastly I used the keys method which returns the keys in a hash
#
#To use the select method you simply write *.select {} and put your conditional in the curly braces
it should look like this array.select {|x| x > 5} this block will return every element in the array that is greater than five
I found select to be a super handy method


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#I learned that you have to really read the ruby docs carefully. Youc ould find a method that works, in my case each, but if you go further you can refactor your code even more.
Explaining my research really helped solidify the concepts I researched in my head. I really feel that I now have the good research skills that will help me succeed at DBC and as long as I continue to pass that info on to others I will continue to solidify it in my head
#One handy trick for using ruby docs is to guess the name of the method ad start there because many times you can guess what it is called and save yourself some time
#
#

=end
