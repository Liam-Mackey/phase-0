#Input : array of names
# output : array of groups
# steps
# 1.take the array and split it into groups of four
    # 1. iterate through each group and turn it into an array
#for each group
    #IF the group is two people
        # put the first person in the first group
        # put the second person in the second group
    # ELSE IF the group is one person
        # put that person into the first group
    # end
# end
# return groups

=begin
def make_group(array)
    groups = array.each_slice(4).to_a
  groups.each {|array|
    if array.length == 2
      groups[0].push(array[0])
      groups[1].push(array[1])
    elsif array.length == 1
      groups[0].push(array[0])
    end
    }
  if groups.last.length < 3
    groups.pop
  end
  return groups
end

=end
# For Complexity I added some radomness (Now it will assign random groups)
=begin
def make_group(array)
  array.shuffle!(random: 4)
    groups = array.each_slice(4).to_a
  groups.each {|array|
    if array.length == 2
      groups[0].push(array[0])
      groups[1].push(array[1])
    elsif array.length == 1
      groups[0].push(array[0])
    end
    }
  if groups.last.length < 3
    groups.pop
  end
  return groups
end
=end

#Refactored solution using nested iterators 
def make_group(array)
  array.shuffle!(random: 4)
  groups = array.each_slice(4).to_a
  groups.each {|array|
    if array.length < 3
      counter = 0
      array.each do |name|
        groups[counter].push(name)
        counter += 1
      end
    end
    }
  groups.pop if groups.last.length < 3
  return groups
end


people = ["A.F", "A.N", "K.B", "C.B", "G.C", "J.C", "C.S", "R.C", "D.L", "D.S"]

people_2 = ["A.F", "A.N", "K.B", "C.B", "G.C", "J.C", "C.S", "R.C", "D.L", "D.S", "L.M"]

p make_group(people)

p make_group(people_2)
=begin
Reflection:

What was the most interesting and most difficult part of this challenge?
  Definitely figuring out how to make sure you didn't have a group of less than three people or one of more than 5. That definitely confused me for a bit. My initial solution involved hashes and the group method, but after trying it out i decided to start from scratch again. 
Do you feel you are improving in your ability to write pseudocode and break the problem down?
  Definitely But i do believe I still need to spend more time following my thoughts through on the psuedo code that way i won't have to make so many changes.The way I do it is once it makes sense to me I rush to try it out, but that is not that effective a solution.
Was your approach for automating this task a good solution? What could have made it even better?
  I really like my solution especially now that it randomizes the groups each time you add a new one. i feel like it would have been better if it was shorter it is still pretty long but thats only because I am trying to prevent groups of less than 3. However i was able to shorten that a bit with my refactoring.
What data structure did you decide to store the accountability groups in and why?
  An array, mainly because I thought it would be easier, and we are only making a list of groups not a list of people the groups there in. But both work fine. In fact my original idea was to use a hash, but I reconsidered.
What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
  I learned about nesting iterators, which is pretty cool and I have rarely done that before. When adding complexity i learned about the Shuffle method which is really cool. i also learned a bit about random number generators, which are really cool.

  
=end