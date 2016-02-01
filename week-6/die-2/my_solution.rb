# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: An array of strings
# Output:

# die#roll - randomly returns one of the strings
# die#sides - returns the number of sides
# die.new - If passed an empty value, should return an argument error

# Steps:
# 1. Create an if statement in the initialize that raises an error
#   if the array value is empty.
# 2. In the init, count the length of the array and assign that value to an
#   instance variable @sides.
# 3. within the sides method, write in @sides so this value is passed if sides
#    is called
# 4. Within the roll method, return 1 string from the array selecting a random
#    integer between 1 and @sides.
# 5. Return that random number by using the index + 1 (to correct for zero index
#     )


# Initial Solution

# class Die
#   def initialize(array)
#     if array == []
#       raise ArgumentError.new("You must submit an array with at least 1 value")
#     end
#     @sides = array.length
#     @array = array
#   end

#   def sides
#     @sides
#   end

#   def roll
#     random_index = rand(1..@sides)
#     return @array[(random_index - 1)]
#   end
# end



# Refactored Solution

class Die

  def initialize(array)
      if array == []
        raise ArgumentError.new("You must submit an array with at least 1 value")
      end
    @sides = array.length
    @array = array
  end

  def sides
    @sides
  end

  def roll
   @array.shuffle!
   return @array[0]
  end
end

test = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])

puts test.sides
puts test.roll

# Reflection

# 1. What were the main differences between this die class and the last one you created
#  in terms of implementation? Did you need to change much logic to get this to work?

#  This was not too different from the original die class. However, the input is an array
#  that includes strings or integers. This made my if statment slightly different. However
#  , the biggest difference was the implemenation of the method (.rand). I could not use
#  .rand directly on the instance variable @array because it is not able to run on array
#  classes. So I had to look up a randomizer for an array.

# 2.What does this exercise teach you about making code that is easily changeable or modifiable?

#   This teaches me that creating class structures can allow me to take an existing
#   foundation, and easily build upon it. If I'm already implementing a class structure,
#   say for a website, and I don't want to have to change the code, but I need to change
#   the logic, I think a class structure would make this easy. ( but I'm not entirely
#   sure)...yet.

# 3. What new methods did you learn when working on this challenge, if any?

#   I learned a new method called (.shuffle!). In fact, I only learned about this
#   because I didn't know what else to do for my refactor. I do think this made the
#   code way more simple!

# 4.  What concepts about classes were you able to solidify in this challenge?

#   At the beginning of this exercise, I was still under the impression that I could
#   use the "argument variable" from the initialize method within all of my class methods.
#   I now realize that I CAN do this, but I first have to pass it to an instance
#   variable using @. I have now solidified this knowledge.