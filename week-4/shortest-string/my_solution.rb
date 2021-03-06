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
=begin
	
rescue Exception => e
	
end
def shortest_string(list_of_words)
  ans = nil
  list_of_words.each_index do |x|
    if x == 0 
      ans = list_of_words[x]
    elsif list_of_words[x].length < ans.length
      ans = list_of_words[x]
    end
  end
  return ans
end

=end
# The simpler way would by to use the min_by method and sort by the length of each object in the array

def shortest_string(list_of_words)
	return list_of_words.min_by {|x| x.length }
end	
