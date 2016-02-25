# I worked on this challenge [by myself].
# This challenge took me [1] hours.


# Pseudocode
# input: An array of numbers
# output: The same array with elements of the array replaced with fizz,
# buzz, or fizzbuzz
# solution:
# Iterate over the array
# For each element in the array, test to see if that element is a 15.
# If it isnt, test again to see if its divisible by 5
# If it isnt, test to see if its divisibly by 3
# If condition 15 passes, replace element with FizzBuzz
# if condition 5 passes, replace element with Buzz
# If condition 3 passes, replace element with Fizz
# Else, keep the current value in the array.


# Initial Solution

# def super_fizzbuzz(array)
# array.map! do |item|
# if item % 15 == 0
#     item = "FizzBuzz"
# elsif item % 3 == 0
#   item = "Fizz"
# elsif item % 5 == 0
#   item = "Buzz"
# else
#   item = item
# end
# end
# return array
# end



# Refactored Solution

def super_fizzbuzz(array)
array.map! do |item|
  if item % 15 == 0
    item = "FizzBuzz"
  elsif item % 5 == 0
    item = "Buzz"
  elsif item % 3 == 0
    item = "Fizz"
  else
    item = item
  end
end
return array
end

# Driver code
puts super_fizzbuzz([15, 5, 3, 1])




# Reflection

# 1. What concepts did you review in this challenge?
# 
# I reviewed how to iterate over an array and replace values of each element
# based on condition statements.
#
# 2. What is still confusing to you about Ruby?
#
# I noticed I had a hard tiem refactoring this solution. I know that I could
# probably easily do this another way in a more difficult manner, but I wasn't
# able to figure out a way to do it more simple.
#
# 3. What are you going to study to get more prepared for Phase 1?
#
# I am going to try to do more Ruby challenges and I also may try to do a tutorial
# on lynda learning.
