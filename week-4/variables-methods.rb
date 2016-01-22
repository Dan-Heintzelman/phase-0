# Full Name Greeting
puts 'Hey there! Whats your first name?'
name1= gets.chomp
puts 'Thanks! What about your middle name?'
name2= gets.chomp
puts 'We\'re on a roll! Finally, can I get your last name?'
name3= gets.chomp
puts 'I am pleased to meet you, ' + name1 + ' ' + name2 + ' ' + name3 + '! '
puts ' '
# Bigger, Better, favorite number
puts 'What is your favorite number?'
number = gets.chomp.to_i
result = number + 1
puts 'Why there, what a lovely number ' + number.to_s + ' is. But don\'t you think ' + result.to_s +  ' is better?'
# An alternative here would be to use string interpolation #{number} instead of converting all variables to strings


# Release 6 - Reflect

# How do you define a local variable?
# A local variable is defined by variable = value, where variable is the name you are assigning to the variable and value is either a string, integer, float or set of operations that creates a value

#How do you define a method?
# A method is defined like so "def method_name(par1, par2, par3)" followed by code below the first line, and it should end with an "end"

#What is the difference between a local variable and a method?
#A method is the actual process(or program) that takes values as arguements whereas a local variable is an actual object. Inside a method there are local variable, but they are local only to the method.

#How do you run a ruby program from the command line?
#You can run a ruby program from the command line like "ruby nameofprogram.rb" followed by the return key. It's that easy!

#How do you run an RSpec file from the command line?
#You can run an RSpec program like "rspec nameofspecfile.rb" followed by the enter key.
#Make sure that the spec file you are running links to the files you are testing.
#If you open the rspec file you can see where it's "relative" should be.

#What was confusing about this material? What made sense?
#The first part I was confused was when I had to make the "make_address" method pass the rspec. I didnt understand that I had to "return the value" using the return method. I was trying to use puts instead.  After I made sense of this, I was able to understand that the method itself does not run unless you call it and print the output.

# LINKS TO CHALLENGES

# 4.3.1 Return a Formatted Address
#

# 4.3.2 Defining Math Methods
#


