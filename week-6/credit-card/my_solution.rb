# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: A 16 digit integer
# Output: True or False
# Steps:

# 1. Initialize the class and check to see if input in 16 digits. If not, raise error.
# 2. Define a method called check_card with the following conditions.
# - Modify the input by doubling every other number starting from the second to last
# - Separate the array into single digits and add the sum
# - Test to see if the sum is divisibly by 10. If yes, return true, if not, return false.

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

# class CreditCard
#   def initialize(credit_num)
#     @credit_num = credit_num.to_s
#     raise ArgumentError.new("Not a valid card number")  unless @credit_num.length == 16
#   end

#   def check_card
#     credit_arr = Array.new()
#     credit_arr = @credit_num.split('').reverse
#     (1...16).step(2) do |x|
#       credit_arr[x] = (credit_arr[x].to_i * 2).to_s
#       credit_arr[x] = credit_arr[x].split('')
#     end
#     credit_arr.flatten!
#     credit_arr.each_index{|num| credit_arr[num] =credit_arr[num].to_i }
#     p credit_arr
#     check =
#       credit_arr.inject {|cumul, item|p cumul + item}

#     check % 10 == 0


#   end



# end

# #Driver Code

# card = CreditCard.new(4563960122001999)

# p card.check_card


# Refactored Solution

class CreditCard
  def initialize(credit_num)
    @credit_num = credit_num.to_s
    raise ArgumentError.new("Not a valid card number")  unless @credit_num.length == 16
  end

  def check_card
    credit_arr = @credit_num.split('')
    (0...16).step(2) do |x|
      credit_arr[x] = (credit_arr[x].to_i * 2).to_s
      credit_arr[x] = credit_arr[x].split('')
    end
      credit_arr.flatten!
      check = credit_arr.inject do |counter, string|
      string.to_i + counter.to_i
      end
      check % 10 == 0
end
end

#Driver Code

card = CreditCard.new(4563960122001999)

p card.check_card

# Reflection

# 1. What was the most difficult part of this challenge for you and your pair?

#   The most difficult part we had was figuring out why our solution failed (debugging) after
#   we ran through our solution. We finally realized that when we were iterating, that we were
#   skipping one of our strings! After figuring this out, we realized that our first solution
#   worked pretty darn well!

# 2. What new methods did you find to help you when you refactored?

#   In the refactor, I learned that we could use .inject to both convert our strings to integers
#   and count the cumulative in the same do loop. Before, we used one loop to convert and
#   another to add them together.

# 3. What concepts or learnings were you able to solidify in this challenge?

#   More and more often I am able to determine which methods can be used on what class types. I
#   am also getting better at recognizing where I can remove extra code in my refactor. For
#   example, on line 68 I did not need to specify that credit_arr was an array like we did in
#   the initial solution since it is implied when you run the method .split.
