# I worked on this challenge [by myself].
# This challenge took me [2.5] hours.


# Pseudocode
# Release 1
# Create an array students with 5 Student objects.
# Create a class that creates a new objects with the class Student that accepts
# both a test score, and their first name.
# Create a student "alex" using the new class
# In the class, add a method called average that adds up the array of scores and
# calculates the average.
# In the class, add a method called letter_grade that returns the string of the
# students grade using the given 10 point scale.

class Student
  attr_accessor :scores, :first_name

  def initialize(first_name, scores)
    @first_name = first_name
    @scores = scores

    {@first_name => @scores}
  end
  def average
   sum = @scores.inject(0) {|sum, val| sum += val}
   @average = sum / @scores.length
  end

  def letter_grade

  case @average
   when 90...100
    "A"
  when 80..90
    "B"
  when 70..80
    "C"
  when 60..70
    "D"
    else
     "F"
   end
  end
end


def linear_search(students_array,name_search)  # LINEAR SEARCH FUNCTION
index = 0
students_array.each do |student|

if student.first_name == name_search
  return index
end
  index += 1
end
  return -1
end

# def binary_search(students_array,name_search)  # Binary SEARCH FUNCTION
# index = 0
# min = 0
# max = students_array.length - 1 # 5 items max = 4
#  # 3rd Item in this case
# solved = false
# students_array.sort_by! &:first_name
#
#
# key = (min + max) / 2
#
# if name_search == students_array[key].first_name
# return key
# solved = true
# elsif name_search > students_array[key].first_name
# min = key
#
# elsif name_search < students_array[key].first_name
# max = key
#
# end
# end



# Refactored Solution

class Student
  attr_accessor :scores, :first_name

  def initialize(first_name, scores)
    @first_name = first_name
    @scores = scores
    {@first_name => @scores}
  end
  def average
   sum = @scores.inject(0) {|sum, val| sum += val}
   @average = sum / @scores.length
  end

  def letter_grade

  case @average  # Even though this is the refactor, I think I like the case
    #statement in my intitial solution better for this challenge.
  #  when 90...100
  if @average >= 90
    "A"
  elsif @average >= 80
    "B"
  elsif @average >= 70
    "C"
  elsif @average >= 60
    "D"
  else
     "F"
   end
  end
end







# DRIVER TESTS GO BELOW THIS LINE
jeff = Student.new("Jeff", [85,100,100,0,15])
roman = Student.new("Roman", [85,50,100,73,15])
alex = Student.new("Alex", [100,100,100,0,100])
ben = Student.new("Ben", [85,100,100,0,15])
chris = Student.new("Chris", [100,100,100,0,100])
students = [alex, roman, ben, chris, jeff]

p binary_search(students, "Roman")

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





# Reflection

# 1. What concepts did you review or learn in this challenge?
#
#   I learned what the differene between a linear search and a binary search is. I
#   found it extremely interesting. For pretty much most of our time in phase-0,
#   we have been using linear searches to iterate through objects. Essentially,
#   iterating is the process of linearly going through each item. I will say that
#   I had a problem getting my binary search to run without crashing, however, it
#   was not part of the test, so I was able to get all the tests to pass otherwise.
#   Also, I learned how to use case statements in this challenge and that you cannot
#   use the > or < comparitive operators for cases.
#
# 2. What is still confusing to you about Ruby?
#
#   Ruby isn't as confusing as it used to be, however I will say that I am not yet
#   an expert at implementing the most efficient way to pass infomration in a class
#   structure. I would also like to get better at using all of the ruby methods
#   at my disposal.
#
# 3.What are you going to study to get more prepared for Phase 1?
#
#   I am going to spend some more time doing some additional review challenges to
#   get as comfortable as possible with programming before I enter phase 1. My
#   strong areas are definitely in CSS/HTML, so I will likely spend most of my time
#   practicing/reading ruby/JS articles.
