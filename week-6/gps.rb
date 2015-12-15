# Your Names
# 1) Devin Mandelbaum
# 2) Liam Mackey

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

   unless library.has_key?(item_to_make)
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end
  
  serving_size = library[item_to_make]
  
  remaining_ingredients = num_of_ingredients % serving_size 
  
  ans = nil
  library.reverse_each do |food, ing|
    if remaining_ingredients % ing == 0
      ans = food
      break
    end
  end
  
  if remaining_ingredients == 0
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: you can make #{remaining_ingredients / library[ans]} of #{ans}"
  end
end

p serving_size_calc("pie", 12)
#p serving_size_calc("pie", 8)
# p serving_size_calc("cake", 5)
# p serving_size_calc("cake", 7)
# p serving_size_calc("cookie", 1)
# p serving_size_calc("cookie", 10)
# p serving_size_calc("blueberry bagel", 5)

#  Reflection
=begin 


What did you learn about making code readable by working on this challenge?
I learned that the logic has to be easily followable and that one line statements are not always the best way to go. I also learned that code should be kept concise not superflous.
Did you learn any new methods? What did you learn about them?
I learned about reverse_each which iterates through an array but in reverse and has_key? which lets you know if the hash has a certain key.
What did you learn about accessing data in hashes? 
I learned that you must list |key, value| when iterating through a hash otherwise you could have unintended consequences I also learned that you can iterate with keys or values.
What concepts were solidified when working through this challenge?
Refactoring is very important and make sure you know what the problem is before you attempt to sove it. Also itterating through hashes and how to do that waas heavily solidified in this challenge for me.
  
=end








#  Reflection