# Pad an Array

# I worked on this challenge [with Ryan Nebuta and Rokas]

# I spent [1.5] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# The array, the minimum size the returned array should be, and the value of the padding
# What is the output? (i.e. What should the code return?)
# An Array with the padding valued included if the min value is over the array length
# What are the steps needed to solve the problem?
# Compare the length of the array to the min value
# If length of the array is greater than the min value, don't modify anything and return the array
# Otherwise, find the difference between the min value and the current length.
# Then add the value X number of times (x being equal to the difference)



# 1. Initial Solution
def pad!(array, min_size, value = nil)
  if array.length >= min_size
    return array
  else
    diff = min_size - array.length
    append = Array.new(diff, value)
    array.concat(append)
  end
end

arr1 = [1,2,3,4,5,6]
pad!(arr1, 10, 5)


def pad(array, min_size, value = nil)
  new_a = array.dup
  if new_a.length >= min_size
    return new_a
  else
    diff = min_size - new_a.length
    append = Array.new(diff, value)
    new_a.concat(append)
    return new_a
  end
end

arr1 = [1,2,3,4,5,6]
pad(arr1, 10, 5)

# 3. Refactored Solution



# 4. Reflection

1. Were you successful in breaking the problem down into small steps?

I think that we were successful doing this, even though it was tough because we had 1 driver and two navigators in our 3 person group at the study session.

2.Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

We had a bit of trouble understanding how the spec file was going to determine whether our
solution was destructive or non desctructive. This only became a problem after we had
translated all of our code into pseudocode. It turns out, our solution involved creating
a duplicate of the input at the beginning to prevent the rspec as seeing our solution as
destructive.

3.Was your initial solution successful at passing the tests? If so, why do you think that
  is? If not, what were the errors you encountered and what did you do to resolve them?

Our initial solution generated many errors. Most of those errors at first were just syntax
errors that we were able to detect and fix pretty easily. The strange error message that we
got was "expected = 23411839402834 (basically some long number) and got = 2342349023482342
(another long number)." Our conclusion was that rspec was using object IDs to see if the
array was being turned into something else (which would be destructive).

4. When you refactored, did you find any existing methods in Ruby to clean up your code?

We did not find any other methods new methods to use beyond using .concat. We were going to use .push, but we ended up staying with .concat for both solutions. Since we worked on
 this with 3 group members, our original failed solution is not on this doucment, so the
  two solutions above are in essense. refactors.

5. How readable is your solution? Did you and your pair choose descriptive variable names?

I think that the variable names we chose are short, to the point, and the code reads well
together.

6.  What is the difference between destructive and non-destructive methods in your own
 words?

 A desctuctive method would be one that changes the original content of the supplied input. So essentially, the value would not be returned to a new variable, it would
 overwrite the exising input value. A non-destructive method would not impact the orignal
  values in the input. In fact, it might not do anything at all unless the result is
    assigned to a new variable.