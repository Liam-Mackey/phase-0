# Longest String

# I worked on this challenge [by myself, with: ].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below
def longest_string(list_of_words)
  counter = 0
  ans = nil
  while counter < list_of_words.length
  	if counter == 0
  		ans = list_of_words[counter]
  	elsif list_of_words[counter].length > ans.length
  		ans = list_of_words[counter]
  	end
  	counter += 1
  end
  return ans
end

# the easier way to do this would be to use sort_by{|s| s.length}.reverse then pick the first string
