# Count Between

# I worked on this challenge [by myself].

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

# def count_between(list_of_integers, lower_bound, upper_bound)
#   # Determine the range using lower_bound and upper_bound
#   # Compare with list of integers and pull out each matching number into a new array
#   # Count number of items in new array

#   range_array = *(lower_bound..upper_bound)
#   combined_array = range_array.concat(list_of_integers)
#   dup_diff_array = combined_array.uniq

#   dup_number = combined_array.length - dup_diff_array.length
#   return dup_number
#   #return number elements within specified range
# end



## Refactor - All tests were passed on first run, but I want to try to do the same program using iterations instead.
def count_between(list_of_integers, lower_bound, upper_bound)
count = 0
range_array = *(lower_bound..upper_bound)
list_of_integers.each do |i|
if range_array.include?(i) == true
count += 1
end
end
return count
end

count_between([1,2,3], -50, 100)

#Both program pass Rspec