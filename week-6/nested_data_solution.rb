# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

# array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# # attempts:
# # ============================================================
# p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

# hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# # attempts:
# # ============================================================
# p hash[:outer][:inner]["almost"][3]




# ============================================================


# Hole 3
# Target element: "finished"

# nested_data = {array: ["array", {hash: "finished"}]}

# # attempts:
# # ============================================================

# p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

# number_array = [5, [10, 15], [20,25,30], 35]


# ans = number_array.map do |element|
#   unless element.is_a?(Array)
#     element + 5
#   else
#     element.map {|sub_element| sub_element + 5}
#   end
# end

# p ans





# driver test code
# p number_array.each do |x|
#   if x.array?
#     x.each {|y| puts x}
#   end
# end
# Bonus:
startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

ans = startup_names.map do |element|
  unless element.is_a?(Array)
    element + "ly"
  else
    element.map do |sub|
      unless sub.is_a?(Array)
        sub + "ly"
      else
        sub.map {|sub_sub| sub_sub + "ly"}
      end
    end
  end
end

p ans

# # refactor for release 3
# ans = number_array.flatten.map {|x| x + 5}

# p ans

# refactor for bonus

# ans = startup_names.flatten.map {|x| x + "ly"}

# p ans

=begin 

What are some general rules you can apply to nested arrays?
Always make sure you know what array you are in when you preform a block of code or call a element. Remember that the flatten ethod is your friend. And to set your map values equal to something. Also becareful when counting indexes.
What are some ways you can iterate over nested arrays?
You can use flatten to make it a one dimensional array, you could use each to puts an array, you can use map to alter an array, and you can use inject to preform operations. In each case, besides flatten you need an iterator for every array within the origibal array.
Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
Flatten is an awesome new method. I also used map and is_a my pair taught me alot about them. I reused map to help with adding together values. I decided it was a good idea because i didn't want the method to be destructive and each wasn't working for me, I later figured out why! Silly me!
=end