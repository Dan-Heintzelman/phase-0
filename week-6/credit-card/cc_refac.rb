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

class CreditCard
  def initialize(credit_num)
    @credit_num = credit_num.to_s
    raise ArgumentError.new("Not a valid card number")  unless @credit_num.length == 16
  end

  def check_card
    credit_arr = @credit_num.split('')
    credit_arr.each_index do |index|
      if index % 2 == 0
        credit_arr[index] = (credit_arr[index].to_i * 2).to_s
        credit_arr[index] = credit_arr[index].split('')
      end

     end

    credit_arr.flatten!
    credit_arr.inject do |counter, string|
      string.to_i + counter.to_i
    end

  end
    # p credit_arr
    # check =
    #   credit_arr.inject {|cumul, item|p cumul + item}

    # check % 10 == 0


  # end



end

#Driver Code

card = CreditCard.new(4563960122001999)

p card.check_card


# Refactored Solution








# Reflection