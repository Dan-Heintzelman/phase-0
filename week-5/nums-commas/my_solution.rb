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
#
# => Turn it into an array
# => Figure out how long the array is
# => Figure out comma count ( length_of_integer /  3) to figure out how many commas I need
# => Insert commas in every 3 characters for the number of times
# => Reverse array insert commas, reverse again

# 1. Initial Solution
# def separate_comma(number)
#   num_array = number.to_s.split('').reverse
#   length = num_array.length
#   comma_array = []
#   count = 0
#   length.times do #using modulo w/ string interpolation for refactor
#     comma_array[count] = num_array.shift
#       if comma_array.length == 3 || (comma_array.length + 1) % 4 == 0
#         comma_array.push(",")
#         count += 2
#       else
#         count += 1
#       end
#   end

#   result = comma_array.reverse  # Removes "," character at the end of 7 character answers.
#     if result[0] == ","
#       p result.shift
#       p result.join
#     else
#       p result.join
#     end

# end

# separate_comma(983469)


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

def separate_comma(number)
  num_array = number.to_s.split('').reverse
  comma_array = []
  count = 0

 num_array.each do |num|  #For refactor, I'm using .each instead of a counter (more efficient).
    if comma_array.length % 4 == 0
    comma_array << ","
    comma_array << num
    else
    comma_array << num
    end
end


result = comma_array  # Removes "," character at the end of 7 character answers.
    if result[0] == ","
      result.shift
      p result.join.reverse
    else
      p result.join.reverse
    end
end

separate_comma(983469)

# 3. Reflection

# 1. What was your process for breaking the problem down? What different approaches did you consider?

#   My process involved what my mentor would describe as "massaging the array". I knew that in order
#   to use the index effectively to figure out what place the comma would be needed to inserted in the
#   array, that I would have to reverse the input array. Also, since I wanted to evaluate each item
#   in the array as indvidual components, I had to use the .spit method before iterating. I had trouble
#   considering any other approaches than using a genex to solve this.

# 2. Was your pseudocode effective in helping you build a successful initial solution?

#   Absolutely, I felt that I was COMPLETELY lost before writing out my pseudocode. Even though I
#   think that ultimately my solution diverged from my pseuocode a bit, it definitely gave me a
#   direction to go in.

# 3.What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they
#   significantly change the way your code works? If so, how?

#   When I refactored my my solution, I decided to iterate using .each instead of using an incrementing
#   counter. This was much for efficient for this particular challenge. This did not significantly
#   effect how my code runs. In fact, the logic is nearly the same, but a bit more simple.

# 4.How did you initially iterate through the data structure?

#   As I mentioned in answer 3, I iterated using a counter. I used the .times method to run through
#   the array the .length of the array's times. This worked, but made my code a little bulky.

# 5.Do you feel your refactored solution is more readable than your initial solution? Why?

#   My refactored solution is much easier to read since the "reader" should not need to think as much
#   when evaluating my code before determing what each line of code is doing.



