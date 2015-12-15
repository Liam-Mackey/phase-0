
# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
#declare an array with the values B, I, N, G, O
# take a random value from that array
# take a random number between 1-100
# return the letter and number

# Check the called column for the number called.
#if the letter is b set the index to 0
# ELSIF i set the index to 1
# ELSIF n set the index to 2
# ELSIF g set the index to 3
# ELSIF o set the index to 4
# END
# for each array
# check if the index at index has value of the number
# If so change the value at index to "X"




# If the number is in the column, replace with an 'x'
  #fill in the outline here

# Display a column to the console
# for each array
# print it on a new line

# Display the board to the console (prettily)
  #fill in the outline here

# Initial Solution

# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#   end
  
#   def call
#     bingo = ["B", "I", "N", "G", "O"]
#     @letter = bingo.sample
#     @num = rand(100) + 1
#     return @letter, @num
#   end

#   def check 
#     @index_hash = {
#       "B" => 0,
#       "I" => 1,
#       "N" => 2,
#       "G" => 3,
#       "O" => 4
#       }
#     @ans = @bingo_board.each do |array|
#       if array[@index_hash[@letter]] == @num
#         array[@index_hash[@letter]] = "X"
#       end 
#     end
#     return @ans
#   end
  
#   def display
#     @ans.each do |array|
#       puts "#{array}"
#     end
#   end
# end

# Refactored Solution


class BingoBoard

  def initialize(board)
    @bingo_board = board
  end
  
  def call
    bingo = ["B", "I", "N", "G", "O"]
    letter = bingo.sample
    @index = bingo.index(letter)
    @num = rand(100) + 1
    return letter, @num
  end

  def check 
    @bingo_board.each do |array|
      if array[@index] == @num
        array[@index] = "X"
      end 
    end
  end
  
  def display
    @bingo_board.each do |array|
      puts "#{array}"
    end
  end
end





#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)


p new_game.call
p new_game.check
new_game.display


#Reflection
=begin
  

How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
It was pretty hard i had a rough time figureing out how to turn letters into index's. I think my psuedocoding style is getting better and better everyday. i really want to improve where i am lacking though, i.e. too much code oriented thining and not enough english. I ended up with initial code that was pretty different then the psuedocode, I ran into some issues using case statements and went with a hash instead. Then when refactoring i found out how to just get the index.
What are the benefits of using a class for this challenge?
It gives you a way of organizing your methods and variables and makes it easier to pass information through to them. It makes it easier to understand and makes your code more DRY.
How can you access coordinates in a nested array?
By typing the index of each array inside each array like array[1][0] this would return the first element in the second array. You can also iterate through them using mutiple ecah statemnts.
What methods did you use to access and modify the array?
Sample, Index, and Each
Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
Sample is pretty cool it retrieves a random item from an array. Index is cool also it tells you the index of whatever you pass it in the array you call it on. You can use sample like such array.sample and index like array.index("b") which would return teh index of "b".
How did you determine what should be an instance variable versus a local variable?
If i was going to be using it in more than one method I made it an instance variable. Otherwise I kept it local like bingo.
What do you feel is most improved in your refactored solution?
The getting rid of the hash and replacing it with the index method. It made my code much shorter and simpler. I fell like I greatly improved there.
  
=end