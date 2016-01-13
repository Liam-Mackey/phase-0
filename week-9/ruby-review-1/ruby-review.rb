# OO Basics: Student


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode



# Initial Solution

# class Student
#   attr_accessor :scores, :first_name

#   def initialize(first_name, scores)   #Use named arguments!
#     #your code here
#     @first_name = first_name
#     @scores = scores
#   end
#   def average
#     @avg = @scores.reduce(:+)/@scores.length
#   end
#   def letter_grade
#     if @avg >= 90
#       return 'A'
#     elsif @avg >= 80
#       return 'B'
#     elsif @avg >= 70
#       return 'C'
#     elsif @avg >= 60
#       return 'D'
#     else 
#       return 'F'
#     end
#   end
  
# end
# alex = Student.new("Alex",[100,100,100,0,100])
# bill = Student.new("Bill", [85,90,86,100,93])
# sean = Student.new("Sean", [72,84,96,100,90])
# sara = Student.new("Sara", [90,95,100,100,90])
# rachel = Student.new("Rachel", [98,100,99,99,100])
# students = [alex, bill, sean, sara, rachel]

# def linear_search(list, str)
#   list.each do |x|
#     if x.first_name == str
#       return list.index(x)
#     end
#   end
#   return -1
# end

# def binary_search(array, str)
#   imin = 0
#   imax = array.length - 1
#   while (imin <= imax)
#     imid = imin + ((imax - imin) / 2)
#     if array[imid].first_name == str
#       return imid
#     elsif array[imid].first_name < str
#       imin = imid + 1
#     else
#       imax = imid - 1
#     end
#   end
#   return -1
# end
  
  
  
# Refactored Solution
class Student
  attr_accessor :scores, :first_name

  def initialize(first_name, scores)   #Use named arguments!
    #your code here
    @first_name = first_name
    @scores = scores
  end
  def average
    @avg = @scores.reduce(:+)/@scores.length
  end
  def letter_grade
    if @avg >= 90
      return 'A'
    elsif @avg >= 80
      return 'B'
    elsif @avg >= 70
      return 'C'
    elsif @avg >= 60
      return 'D'
    else 
      return 'F'
    end
  end
  
end
alex = Student.new("Alex",[100,100,100,0,100])
bill = Student.new("Bill", [85,90,86,100,93])
sean = Student.new("Sean", [72,84,96,100,90])
sara = Student.new("Sara", [90,95,100,100,90])
rachel = Student.new("Rachel", [98,100,99,99,100])
students = [alex, bill, sean, sara, rachel]

def linear_search(list, str)
  list.each do |x|
    if x.first_name == str
      return list.index(x)
    end
  end
  return -1
end

def binary_search(array, str)
  imin = 0
  imax = array.length - 1
  while (imin <= imax)
    imid = imin + ((imax - imin) / 2)
    if array[imid].first_name == str
      return imid
    elsif array[imid].first_name < str
      imin = imid + 1
    else
      imax = imid - 1
    end
  end
  return -1
end




puts binary_search(students, "Alex")
puts linear_search(students,"Rachel")
puts alex.average

puts alex.letter_grade

# DRIVER TESTS GO BELOW THIS LINE
# Initial Tests:

p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0


# Additional Tests 1:

p students[0].average == 80
p students[0].letter_grade == 'B'

# Additional Tests 2:

p linear_search(students, "Alex") == 0
p linear_search(students, "NOT A STUDENT") == -1