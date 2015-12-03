# Factorial

# I worked on this challenge [by myself, with: ].


# Your Solution Below
def factorial(number)
	if number <= 1
		return 1
	end
  ans = number
  while number > 1
    ans = ans * (number - 1)
    number -= 1
  end
  return ans
end