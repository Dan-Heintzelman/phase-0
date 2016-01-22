# Analyze the Errors

# I worked on this challenge [by myself].
# I spent [1] hours on this challenge.

# --- error -------------------------------------------------------

# "Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

# def cartman_hates(thing)
#   while true
#     puts "What's there to hate about #{thing}?"
# end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#  The error is occuring in the errors.rb file.
# 2. What is the line number where the error occurs?
#  The line numbers reads as 170
# 3. What is the type of error message?
#   This is a syntax error
# 4. What additional information does the interpreter provide about this type of error?
# The interpreter says its found an "unexpected end-of-input". It was expecting the keyword "end".
# 5. Where is the error in the code?
#  The error is that the input unexpectedly ended. Essentially the keyword end is missing somewhere here to mark the end of input
# 6. Why did the interpreter give you this error?
#  The intepretor gave this error because the "while" loop does not have an end. The method does have an end, so we are just missing one "end".

# --- error -------------------------------------------------------

# south_park

# 1. What is the line number where the error occurs?
#  The error occurs on line 35
# 2. What is the type of error message?
# The interpreter lists the error as "in '<main>': undefined local variable or method'"
# 3. What additional information does the interpreter provide about this type of error?
# It says this error is for main:Object. To me this means there is an object error
# 4. Where is the error in the code?
# The error is located on line 35, "south_park"
# 5. Why did the interpreter give you this error?
# The interpreter does not know what to do with south_park. It is not a method and if it wants to be a variable, no value or expression has been assigned to it.

# --- error -------------------------------------------------------

# cartman()

# 1. What is the line number where the error occurs?
# The error occurs on line 50
# 2. What is the type of error message?
#  This is once again a error in <main>, but this time as an unefined method.
# 3. What additional information does the interpreter provide about this type of error?
# This interpretor specifies that it is the method "cartman" that is undefined and that it is a (noMethodError)
# 4. Where is the error in the code?
# The error is this code is the entire line carman()
# 5. Why did the interpreter give you this error?
#This interpretor is giving this error because we clearly have a method(), but we can't call it because it hasn't yet been defined.

# --- error -------------------------------------------------------

# def cartmans_phrase()
#   puts "I'm not fat; I'm big-boned!"
# end
#
# cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# The error is on line 65, but it does not become an error until line 69 calls the cartmans_phrase method.
# 2. What is the type of error message?
#  This is an arugment error.
# 3. What additional information does the interpreter provide about this type of error?
#The interpretor tells me that the argument errors is (1 for 0) and that we have the "wrong number of arugments"
# 4. Where is the error in the code?
# The error doesnt really occur until line 69 when an arguement is supplied for which there is no formal parameter.
# 5. Why did the interpreter give you this error?
# The interpretor errored because when it tried to pass the arguement "i hate kyle" into the method "cartmans_phrase", it expected 1 parameter, but 0 were supplied, so the value could not be passed.

# --- error -------------------------------------------------------

# def cartman_says(offensive_message)
#   puts offensive_message
# end

# cartman_says

# 1. What is the line number where the error occurs?
# Line 84, however, the error is not invoked until line 88
# 2. What is the type of error message?
# This is another arguement error.
# 3. What additional information does the interpreter provide about this type of error?
#The intepreter tells us we have "the wrong number of arguements (0 for 1)" and that line 88 is where the error is invoked.
# 4. Where is the error in the code?
# The error occurs at line 88 where a method ia called but no arguement defined.
# 5. Why did the interpreter give you this error?
# The intepretor errored because the method, "cartman_says" is called, but it provided 0 arguements when 1 should be suppled (hence 0 for 1).



# --- error -------------------------------------------------------

# def cartmans_lie(lie, name)
#   puts "#{lie}, #{name}!"
# end
#
# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
#  line 105, but invoked at line 109
# 2. What is the type of error message?
# The type of error message is "wrong number of arguements.""
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter supplies us with Both the method that is erroring, and the line where method that fails is called. we Have (1 for 2) meaning 1 argument supplied, but two expected.
# 4. Where is the error in the code?
# The error is invoked at line 109. The method supplied only gives 1 arguement to pass.
# 5. Why did the interpreter give you this error?
# The intepretor errored since the method, cartmans_lie, only has 1 arguement ('a meteor the size of earth is about to hit Whyoming'), there should also be a "name" supplied per the parameters of the method.

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# The error occurs on line 124
# 2. What is the type of error message?
# This is a (TypeError)
# 3. What additional information does the interpreter provide about this type of error?
# It says that '*': string can't be coerced into Fixnum.
# 4. Where is the error in the code?
# You cannot multiple a number by a string, however you can multiply a string by a number.
# 5. Why did the interpreter give you this error?
# This code is trying to take 5 and multiple it by "respect my authority" times. Doesn't make sense does it?
# The interpretor is trying to figure this out by coercing the string into a number value, but it cannot.

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# The error occured on line 140
# 2. What is the type of error message?
# The type of error is a (ZeroDivisoinError)
# 3. What additional information does the interpreter provide about this type of error?
# It tells us a division of zero is happening ("/" divided by zero).
# 4. Where is the error in the code?
# This error occurs on line 140 when the code attemps to divide an integer by 0, which is not allowed.
# 5. Why did the interpreter give you this error?
# The interpreter gave us this error because the variable "amount_of_kfc_left" is being defined by an illegal expression. (20/0).

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# The error occurs on line 156
# 2. What is the type of error message?
#The error is a (LoadError).
# 3. What additional information does the interpreter provide about this type of error?
#The interpreter tells us that "require_relative" : cannot load file and it points to where the file shoudl be:
# The file should be /Users/danheintzelman/phase-0-work/phase-0/week-4/cartmans_essay.md
# 4. Where is the error in the code?
# The error is not in the code per se. The error is that this code is trying to make a relative link to a markdown document that doesnt exist.
# 5. Why did the interpreter give you this error?
# the require_relative statement is calling for a document called "cartmans_essay.md" is the same directory, but it does not exist.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
# 1.Which error was the most difficult to read?
#
# I was actually surprised that I didn't have too much of hard time reading these. However, I'd have to say that I had to double check that "coercing a string into a fixnum" literally meant that is was trying to convert the string into a number. This can be slightly confusing.
#
#2. How did you figure out what the issue with the error was?
#
# For answer #1, I didn't see the 5 preceding the * "respecting my authroity", so that threw me off. Once I saw the integer 5 in the code, I realized immediately what the issue was.
#
#3  Were you able to determine why each error message happened based on the code?
#
# I'd say that I was able to determine the errors in the code without even using the error message in the terminal for most if not all of these errors. I did get a better grip on the correlation between code and errors though.
#
#4.  When you encounter errors in your future code, what process will you follow to debug?
#
# Well, now that I know that errors will process one at a time, from the top down to the bottom, I will know to work that way in debugging. Although, I'm fairly certain that I will try to as much as possible to catch errors before they become entangled in many different areas of my code. I will debug always and often.
#
#
#
#
#
#
#
#
#
#
#
