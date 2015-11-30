puts "Whats your first name?"
first_name = gets.chomp

puts "Whats your middle name?"
middle_name = gets.chomp

puts "What about your last name?"
last_name = gets.chomp

puts "Well hello #{first_name} #{middle_name} #{last_name}!"

puts "#{first_name} whats your favorite number?"
num = gets.chomp

better_num = num.to_i + 1

puts "Well #{first_name} #{better_num} is a better number!"
puts "Goodbye!"