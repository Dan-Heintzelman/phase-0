# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [with: Kevin Sullivan ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# define a method call it total, accepts array
# create variable for result
# loop through all the elements of the array
# add each element to the result variable
# return result

# Input: [1,2,3,4,5]
# Output: 15
# Steps to solve the problem.


# 1. total initial solution

# define a method call it total, accepts array
# def total(array)
# # create variable for result
#   result = 0
#   counter = 0
#
# # loop through all the elements of the array
#   while counter < array.length
# # add each element to the result variable
#     result = result + array[counter]
#     counter = counter + 1
#   end
# # return result
#   puts result
# end
#
# total([1,2,3,4,5])
#
#
# # 3. total refactored solution
#
def total(array)
  result = 0
  counter = 0

  while counter < array.length
    result = result + array[counter]
    counter = counter + 1
  end
  result
end


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!

# define a method call it sentence_maker, accepts array
# create variable for result
# loop through all the elements of the array
# capitalize the first element of the array
# add each element and a space to the result variable
# add a period to the result variable at the end
# return result

# Input:
# Output:
# Steps to solve the problem.


# 5. sentence_maker initial solution

# define a method call it sentence_maker, accepts array
# def sentence_maker(words)
# # create variable for result
#   counter = 0
#   words.length
#   # capitalize the first element of the array
#   result = words[0].capitalize
# # loop through all the elements of the array
#   while counter < words.length
# # add each element and a space to the result variable
#     result = result + " " + words[counter].to_s
#     counter = counter + 1
#   end
#   # add a period to the result variable at the end
#   result = result + "."
# # return result
#   puts result
# end
# sentence_maker(["all", "my", "socks", "are", "dirty"])
# sentence_maker(["alaska", "has", "over", 586, "thousand", "miles"])

# 6. sentence_maker refactored solution

def sentence_maker(words)
  counter = 1
  words.length
  result = words[0].capitalize
  while counter < words.length
    result = result + " " + words[counter].to_s
    counter = counter + 1
  end
  result = result + "."
  result
end





