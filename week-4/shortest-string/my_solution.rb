# Shortest String

# I worked on this challenge [by myself, with: ].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below
def shortest_string(list_of_words)
  counter = 0
  ans = nil
  while counter < list_of_words.length
  	if counter == 0
  		ans = list_of_words[counter]
  	elsif list_of_words[counter].length < ans.length
  		ans = list_of_words[counter]
  	end
  	counter += 1
  end
  return ans
end

# The simpler way would by to use the sort_by method and sort by the length of each object in the array