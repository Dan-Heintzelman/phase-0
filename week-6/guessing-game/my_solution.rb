# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# The class is initialized with the answer already specified an an integer.
# If I want to play the game, I call game.guess() and specify guess, this would be the input
# Output:
# game.solved? -should output true if guess has yet to equal answer, else false
# game.guess - Will output the comparison between guess and answer
# Steps:

# 1. For game to start, require that the answer be given (non nil).
# 2. Take the answer and pass it to variable answer that can be shared.
# 3. If player runs guess, require that they provide a non nil guess.
# 4. Compare their guess to the answer. If answer is higher than guess, return feedback that their
# guess is low. If answer is lower than guess, return feedback that their guess is high. Else, if
#  their answer is equal to guess, tell them its correct.
# 5. For .solved? , we want to make sure if guess(guess) is equal to correct, then this is true, otherwise, false.


# Initial Solution

# class GuessingGame
#   def initialize(answer)
#     if answer == nil
#       raise Argument.new("You must provide an answer for guessing game to work") #I think this is inherent and not required * Remove in Refactor
#     else
#       @answer = answer
#     end
#   end
#   def guess(guess)
#     @guess = guess
#     if @answer > guess
#       @solved = false
#       return :low
#     elsif @answer < guess
#       @solved = false
#       return :high
#     else
#       @solved = true
#       return :correct
#     end

#   end

#   def solved?
#     if @guess == nil
#       return false
#     else
#     return @solved
#     end
#     # if guess(@guess) == :correct
#     #   puts "True!"
#     #   return true
#     # else
#     #   puts "False"
#     #   return false

#     # end
#   end

#   # Make sure you define the other required methods, too
# end

# Driver Code



# Refactored Solution
class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
    @guess = guess
    @solved = false
    if @answer > guess
      return :low
    elsif @answer < guess
      return :high
    else
      @solved = true
      return :correct
    end
  end

  def solved?
    if @guess == nil
      return false
    else
    return @solved
    end
  end

end

#Driver code
 test = GuessingGame.new(10)
 puts test.solved?
 puts test.guess(5)
 puts test.guess(15)
 puts test.solved?
 puts test.guess(10)
 puts test.solved?



# Reflection

1. How do instance variables and methods represent the characteristics and behaviors (actions) of
a real-world object?

  Intance variables are a very good in helping to simulate real worl objects because they represent
  the inherent property of an object. In the real world, an object may have a value that changes
  based on the behavior of its actions, or what I would call a method. For instance, a dice has the
  value of whatever side is facing up. When you roll it, it still has this property inherently,
  but the action of rolling it, changes that value. All of the actions and values of a dice are
  encapsulated within that particular instance of a dice. This is why the class structure makes
  so much sense when compared to real world objects.

2. When should you use instance variables? What do they do for you?

  Intsance variables are most important when more than one different behavior(method) of an object
  requires the use of that variable. Especially if more than one behavior may modify that variable.
  For intance, if I am driving a car and pusing down the pedal, car.skinny-pedal increases the
  speed to a value of 50 mph, and then another action car.wheel-turn (turning the wheel) reduces,
  the speed of that car my 2mph, it is important that speed is able to be modified by both actions,
  therefore and instance variable would be approriate.

3. Explain how to use flow control. Did you have any trouble using it in this challenge? If so,
what did you struggle with?

  I thought that my flow was pretty flawless at first. Then I realized that some things exist
  ouside of the "flow". For intsance, I did not realize at first that GuessingGame.solution?
  would need to have a starting value of false. Even though all my drive code worked, I forgot
  to test what the answer would be if there was no guess!

4. Why do you think this code requires you to return symbols? What are the benefits of using
symbols?


