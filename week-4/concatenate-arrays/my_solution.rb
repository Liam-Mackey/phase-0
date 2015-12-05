# Concatenate Two Arrays

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def array_concat(array_1, array_2)
  ans = []
  array_1.each do |x|
  	ans.push(x)
  end 

  array_2.each do |x|
  	ans.push(x)
  end

  return ans
end

# the easy solution is to just use the concat method for arrays

=begin
	
def array_concat(array_1, array_2)
	ans = array_1.concat(array_2)
	retrun ans
end
	
=end