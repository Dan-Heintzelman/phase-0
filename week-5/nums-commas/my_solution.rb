# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# # What is the input?
# A positive integer
# # What is the output? (i.e. What should the code return?)
# A Comma seperated integer as a string
# # What are the steps needed to solve the problem?
# Turn it into an array
# Figure out how long the array is
# Figure out comma count ( length_of_integer /  3) to figure out how many commas I need
# Insert commas in every 3 characters for the number of times
# -Method 1 : reverse array insert commas, reverse again

# 1. Initial Solution
def separate_comma(number)
  num_array = number.to_s.split('').reverse
  length = num_array.length
  comma_array = []
  count = 0
  length.times {
    comma_array[count] = num_array.shift
      if comma_array.length == 3 || (comma_array.length + 1) % 4 == 0
        comma_array.push(",")
        count += 2
      else
        count += 1
      end
  }

  result = comma_array.reverse  # had to add this in so
    if result[0] == ","
      p result.shift
      p result.join
    else
      p result.join
    end

end

separate_comma(983469)


  # num_array.each do |num|
  # comma_array[count] = num_array.shift

  # if comma_array.length == 3 || comma_array.length % 4 == 0
  #   # comma_array << ","
  #   puts "First If passed"
  #   count += 1
  # else
  #   count += 1
  # end
  # end




# 2. Refactored Solution




# 3. Reflection