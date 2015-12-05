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
  ans = nil
  list_of_words.each_index do |x|
    if x == 0 
      ans = list_of_words[x]
    elsif list_of_words[x].length > ans.length
      ans = list_of_words[x]
    end
  end
  return ans
end

# the easier way to do this would be to use max_by{|s| s.length}
=begin
def longest_string(list_of_words)
	return list_of_words.max_by {|x| x.length }
end
=end
