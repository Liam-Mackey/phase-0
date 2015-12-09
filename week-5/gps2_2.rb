# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # [fill in any steps here]
  # turn string into an array
# declare empty hash
# iterate through the array and pass each value to be a key in the hash and give it the value one
  # print the list to the console [can you use one of your other methods here?]
# output: hash od items 

# Method to add an item to a list
# input: item name and optional quantity
# steps:
# take input and turn the name into a key and the quantity into value
# output: modified hash

# Method to remove an item from the list
# input: name
# steps: delete key with item name
# output: modified hash

# Method to update the quantity of an item
# input: name and a new quantity
# steps: use the name as they key and set the value equal to a new quantity
# output:

# Method to print a list and make it look pretty
# input: modified hash
# steps: iterearte through the hash and then print each object 
# output: string list

def create_list(string)
  arr = string.split(" ")
  hash = Hash.new(1)
  arr.each do |n|
    hash[n] = 1
  end
  return hash
end


def add_list(name, quant, hash)
  hash[name] = quant
  return hash
end


def remove(name, hash)
  hash.delete(name)
  return hash
end


def update(name, new_quantity, hash)
  hash[name] = new_quantity
  return hash
end


def print_list(hash)
  hash.each do |k,v|
    puts "We are buying #{v} of #{k}"
  end
end


var = create_list("juice celery pasta cool-aide")

var = add_list("lemonade", 2, var)

p var

var = add_list("tomatoes", 3, var)

check = {"juice"=>1, "celery"=>1, "pasta"=>1, "cool-aide"=>1, "lemonade"=>2, "tomatoes"=>3}

p (var == check  ) 
p var

var = add_list("ice-cream", 4, var)

p var

var = remove("lemonade", var)

p var
var = update("ice-cream", 1, var)

p var
print_list(var)

=begin

What did you learn about pseudocode from working on this challenge?
I learned that psuedocode needs to be understood by everyone on the team so it shoul be in plain english and not to confusing. Also you should think the whole problem through before you code.
What are the tradeoffs of using Arrays and Hashes for this challenge?
Arrays are a bit easier in the beginning but become more complicated when you decide to add quantity. what me and my pair did was turn our initial array into a hash. That worked super well.
What does a method return?
a method returns its return value or the last object it used, i.e implicit return.
What kind of things can you pass into methods as arguments?
You can pass a ton of stuff into methods as arguments, variables, other methods, strings, or fixnums, etc. But in this challenge we mostly passed strings integers and variables which stored the result of our olther methods into our current methods as arguments.
How can you pass information between methods?
You can use methods a paramaters as well as call methods inside methods. The easiest way however is to set the result of a previous method equal to a variable. Then you can pass that variable into the new method as an argument.
What concepts were solidified in this challenge, and what concepts are still confusing?
The concept that was solidified in thsi challenge for me was how to pass information between methods. It is a lot easier than i thought but still requires outside of the box thnking for the first time. I am still a bt confused on how to properly psuedocode. I forgot to ask our guide for this challenge.


=end