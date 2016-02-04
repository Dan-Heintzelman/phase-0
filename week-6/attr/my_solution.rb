#Attr Methods

# I worked on this challenge [by myself]

# I spent [2] hours on this challenge.

# Pseudocode

# Input:There is no input, the instance variable @ name is set in the initialize.
# Output: Output is a salutation to the console addressing the user @name.
# Steps:
# 1. Initialize the class NameData with the value of my name
# 2. In the Greetings class, pass the value @name from the NameData class.
# 3. In the Greetings class, defind a method hello that prints to the console the name
# that is gathered from the NameData class.

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

# Final Release - Reflection

# 1. What is a reader method?

#   A reader method is a line of code that replaces the need to
#   define a method to call an instance variable.

# 2. What is a writer method?

#   A writer method is a line of code that replaces the need to
#   define a method to modify an instance variable. If I want to
#   modify a value of instance variable outside of the class
#   definition, I can do this easily with a writer method.

# 3. What do the attr methods do for you?

#   The attr methods make it easier to modify the attribute values
#   of items inside of class instance and also make it more
#   efficient to read values out of class instance.

# 4. Should you always use an accessor to cover your bases? Why or
# why not?

#   An accessor is great way to both read and change the value of
#   an insance variable without having to write two separate lines
#   of code for both read and write. The downside to this is that
#   it can make values in your code vulnerable by allowing them to
#   be passed around. For instance, if you have an attr reader and
#   writer on a credit card number, a hacker might be able to find
#   a loophole to read this. You may only want the user to be able
#   to modify the existing value, not read it.

# 5. What is confusing to you about these methods?

#   The only reason I feel that these methods are confusing is
#   because I have not used them enough yet. I think it is easy to
#   understand the concept of what they do, but strange to entirely
#   remove a method from the class.