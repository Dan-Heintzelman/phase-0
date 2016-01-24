# # Smallest Integer

# # I worked on this challenge [by myself].

# # smallest_integer is a method that takes an array of integers as its input
# # and returns the smallest integer in the array
# #
# # +list_of_nums+ is an array of integers
# # smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
# #
# # If +list_of_nums+ is empty the method should return nil

# # Your Solution Below

# def smallest_integer(list_of_nums)

# # Take list_of_nums, and order it from smallest to largest)

# length = list_of_nums.length
# new_array = []
# boolean = true

# if list_of_nums == 0  # Test for zero
#   return 0
# else
#  list_of_nums.each { |i|  # Create manual sort
#   if boolean == true      # Boolean allows i to push without a value comparison
#     new_array.push(i)
#   elsif i < new_array.last
#     new_array.push(i)
#   else
#   end
#     if i > new_array.last()
#     new_array.unshift(i)
#   end
#  boolean = false
#  }
# puts new_array.join(", ") #test to show if I'm getting correct values.


# end
# return new_array.last

# end

# smallest_integer([10,-50,83])


#Refactor (Much easier solution! )

def smallest_integer(list_of_nums)

length = list_of_nums.length
index = length.to_i - 1
index.times do
if list_of_nums[0] < list_of_nums[1]
  list_of_nums.delete_at(1)
else
  list_of_nums.delete_at(0)
end
end
return list_of_nums[0]
end
smallest_integer([100,-50,789])