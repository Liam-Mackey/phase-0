
# Numbers to Commas Solo Challenge

# I spent [2] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? a number
# What is the output? (i.e. What should the code return?) a string, i.e number with commas in it
# What are the steps needed to solve the problem?
# 1. turn number into text
# 2. create a counter ans set it equal to negative 4 (where the first comma will go in the string)
# 3. WHILE the string at the counter value is not empty
      # 1. insert a commas in the string at the counter values position
      # 2. increase teh counter by four(so you movw thee digits a head)
# END WHILE 
# return the answer
# 1. Initial Solution

def separate_comma(num)
  str_num = num.to_s
  counter = -4
  while str_num[counter] != nil
    str_num = str_num.insert(counter, ",")
    counter -= 4
  end
  return str_num
end


# 2. Refactored Solution
=begin
def separate_comma(num)
  arr = num.to_s.split("")
  counter = -4 
  while arr[counter] != nil
    arr = arr.insert(counter, ",")
    counter -= 4
  end
  return arr.join
end
=end

# 3. Reflection
=begin
   
What was your process for breaking the problem down? What different approaches did you consider?
   I first started to analyze what the pattern is when it comes to adding commas to a number. I started with the idea that if I used a few if else statements I could start a particular value in a string then I could work on moving 4 spaces forward each time then add a comma. Lets just say that that did not work. So then in an aha moment I realized if I started from the back I wouldn’t even need the if else statements. So that's how I got my solution, there was a lot of trial and error.
Was your pseudocode effective in helping you build a successful initial solution?
   super effective. I didn't get it on the first try after implementing my pseudocode but I did eventually get it and the pseudo code helped me a ton. It definitely shortened my coding time.
What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
   I liked my initial solution which I created without looking much at the docs better. But for refactoring I figure I would try using a array. I used the split method as well as the insert and join methods. I really liked looking at ruby docs and using methods from their. The docs can be kind of hard to read but after a while it gets easier. The methods I implemented changed the way my code works a little by going from working on a string to an array. I like my original solution better.
How did you initially iterate through the data structure?
   I used a while loop. Which i still prefer over the each method I found it to be easier to use.
Do you feel your refactored solution is more readable than your initial solution? Why?
   No i actually like the initial solution I came up with better. I think it makes more sense, but i just didn’t know how to improve it. After researching for a long time I figured I would try a whole new approach which did teach me more about methods but I like my first born code better.

   
=end