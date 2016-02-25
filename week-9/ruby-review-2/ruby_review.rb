# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode



# Initial Solution

def super_fizzbuzz(array)
array.map! do |item|
if item % 15 == 0
    item = "FizzBuzz"
elsif item % 3 == 0
  item = "Fizz"
elsif item % 5 == 0
  item = "Buzz"
else
  item = item
end
end
return array
end

# Driver code
puts super_fizzbuzz([15, 5, 3, 1])


# Refactored Solution






# Reflection
