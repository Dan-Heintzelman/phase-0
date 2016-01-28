# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?

# iterate through each number in array
# Call the hash of N , and add 1 to the value of Hash[n])
# If N doesnt exist as key, we need to make sure it creates it.
# For the newly created hash, pull out the highest value of all the key/value pairs
# For any key with a value of the highest value, return that as an array.

# 1. Initial Solution

def mode(array)
  hash = Hash.new {|hash,key| hash[key] = 0} #creates a default value of 0 for all hash values

  array.each {|num|  #iterate through the array and count +1 for each value
    hash[num] += 1
            }



  values = [] # Declare array of all values
  hash.each do |key, value|
  values.push(value)
  end


max_value = values.max  #find the key with the maximum value
result = [] # Declare array where we return result

hash.each do |key, value|
  if value == max_value
    result.push(key)
  end
end
  return result
end

# array_1 = [4, 4, 5, 5, 6, 6, 6, 7, 5]
# mode(array_1)


# 3. Refactored Solution

def mode(array)
  hash = Hash.new(0)
  array.each do |x|
    hash[x] += 1
  end
  result = []
  hash.each { |x,y|
  if y == hash.values.max
    result.push(x)
  end
  }
  return result
end




# 4. Reflection

# 1. Which data structure did you and your pair decide to implement and why?

# For this challenge, we used a hash data structure. The original idea was to implement
# a "counting" system where each number from the array would create a key and then add
#  a +1 count to that newly generated key. If we were to use an array, we would not
# have been able to use "strings" as keys. Example : "meow" => 5 . This key/value pair
# would assert that meow was repeated 5 times in the input array.

# 2. Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?

# I would say yes. We started our pseudocode during our first meeting during the DBC
# Chicago study group session. We met up the following day to finish our pairing session
# . Both of us had worked on the solution a little on our own time and thus we did not
#  need too much additional pseudocode for our first solution. However, for the refactor
#  , we did have successs with using pseudocode and I can tell we were both getting better at
#  it.

# 3.  What issues/successes did you run into when translating your pseudocode to code?

#  We were both still uncomfortable with accessing and storing values in hashes, so it was a
#  bit difficult to turn our thought process into code using an unfamiliar data structure.

# 4.  What methods did you use to iterate through the content? Did you find any good ones
# when you were refactoring? Were they difficult to implement?

# For both the original and the final we used the .each method to iterate through the
# content.  However the main difference is how we compared values for each iteration. For
# our first solution, we used an if statement to compare values. For the refactor. we used
# .values (to pull out the values of the hash to compare) and .max (to find the maximum values among those values.) They were slightly difficult to implement at first but made
# sense eventually!