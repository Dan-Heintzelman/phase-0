# Largest Integer

# I worked on this challenge [by myself].

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def largest_integer(list_of_nums)
  length_index = list_of_nums.length - 1
  length_index.times do
  if list_of_nums[0] > list_of_nums[1]
  list_of_nums.delete_at(1)
  else
    list_of_nums.delete_at(0)
  end
  end
return list_of_nums[0]
end

largest_integer([100,-50,789])

### This solution is baisically a reverse of my 4.6.1

## Refactor - I can refactor with the .sort method of I want and then return the arrays[last] value}