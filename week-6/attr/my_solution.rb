#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData
    attr_reader :name
  def initialize
    @name = "Dan Heintzelman"
  end

end


class Greetings

  def initialize
    @namedata = NameData.new
  end

  def hello
    puts "Hello #{@namedata.name}. How wonderful to see you today!"
  end

end

greet = Greetings.new
greet.hello



# Reflection

# Release 1 - Reflection

# 1. What are these methods doing?

#   Essentially, what is happening here is that the instance_of_profile, when created
#   with the class of profile, has some established values stored within instance
#   variables. (@name, @age, @occupation). Methods are defined for both reading the
#   current variable and to modify the current variable. So, to read the age, you
#   call .what_is_age and to modify it, you call .change_my_age.

# 2. How are they modifying or returning the value of instance variables?

#   To modify the value, the method accepts an "argument = ". For instance, to change
#   the value of @age, you call .change_my_age = 30 ,if you wish to change the current
#   value of @age. Returning the value is simply just calling a method that referenes
#   the instance variable.

# Release 2 - Reflection

# 1. What changed between the last release and this release?

#   In this realease, the class used attr_reader to recall the value of @age
#   intead of having to define a method that returns the instance variable. So now,
#   the class code is 2 lines shorter and most likely easier for Ruby to work with.

# 2. What was replaced?

#   def what_is_age
#      @age
#   end

# 3. Is this code simpler than the last?

#   The new code is 2 lines shorter and easier for ruby to understand beacuse it
#   is using a :symbol instead.

# Release 3 - Reflection

# 1. What changed between the last release and this release?

#   In this realease, the class used attr_writer to change the value of @age
#   intead of having to define a method that reassasigns the supplied argument
#   to the instance variable.

# 2. What was replaced?

#   def change_my_age=(new_age)
#     @age = new_age
#   end

# 3. Is this code simpler than the last?

#   The new code is 2 lines shorter and easier for ruby to understand beacuse it
#   is using a :symbol instead. (same answer as release 2, question 3).

