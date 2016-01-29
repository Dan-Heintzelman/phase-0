# Die Class 1: Numeric

# I worked on this challenge [With Mike London]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: Input is the arguement of the number of sides
# Output: The output for .sides would be the value of the arguement. The out put for
# .roll would be random number selected between 1 and @sides
# Steps:
# Within the .initialize method, create a test that checks whether the supplied default
# value is greater than 1.
# for the method sides, return the instance variable @sides
# for the method roll, return a random number between 1 and @sides

# 1. Initial Solution

class Die
  def initialize(sides)
    @sides = sides
    if sides < 1
      raise ArgumentError.new("Only numbers 1 and above are allowed.")
    end
    #puts "This creates a new die object with #{@sides} sides"
  end

  def sides
    # puts "The die has #{@sides} sides."
    return @sides
  end

  def roll
    p rand(1..@sides)
  end


end

Test = Die.new(6) # This creates a new die object with 6 sides

puts Test.sides

Test.roll



# 3. Refactored Solution

class Die
  def initialize(sides)
    @sides = sides
    if sides < 1
      raise ArgumentError.new("Only numbers 1 and above are allowed.")
    end
  end

  def sides
    return @sides
  end

  def roll
    p rand(1..@sides)
  end
end

# Initial solution was as clean as I could make it, so I just cleaned up comments and spacing to make it more readable.



# 4. Reflection

1. What is an ArgumentError and why would you use one?

An arguement error is an error that will display when you try to run a method that expects
arguments and does not receive arguments that meet the initial requirements. You would use this error
to prevent a user from being able to use your code improperly.

2.What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

For the first time, I used the method .rand to return a random value between a specified range. The
original way I tried to implement it worked. I used rand() and supplied a range as the arguement.

3.What is a Ruby class?

A ruby class is difficult to explain. It is like the shell of a ruby object that defines
what that object "IS" and what it can do. It gives it the ability to have behavior beyond its
inherent abilites as an object.

4.Why would you use a Ruby class?

Creating a ruby class allows you to give objects the inherent ability to perform certain tasks. As
described in "The Well Grounded Rubyist", if you want an object to calculate the value of a ticket,
you don't have to define a new ticket calculating method, you can great an object with the class of
ticket that does this for you.

5.What is the difference between a local variable and an instance variable?

An instance variable is a variable that is defined within a class that is accessibly by
all instances of that class. A local variable is variable that is acessible only within
its scope, such as within a method.

6.Where can an instance variable be used?

An instance variable can be used anywhere within the class definition. As the "Well Grounded
Rubyist" says, "An instance variable initialized in one method insdie a clas can be used by
any method defined within that class"