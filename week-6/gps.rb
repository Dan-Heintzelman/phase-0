# Your Names
# 1) Chris Henderson
# 2) Dan Heintzelman

# We spent [2.2] hours on this challenge.

# Bakery Serving Size portion calculator.

# def serving_size_calc(item_to_make, num_of_ingredients)
#   #hash - key is  items to make and the value is number of ingredients to make one full serving. We are initializing variables here.
#   library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
#   error_counter = 3


#   # Iterating over the hash library passing food to the code block
#   library.each do |food|
#   # When food is passed to the code block, its yielding a 2 element array,
#   # which is generating a nil value each time it iterates.
#     if library[food] != library[item_to_make]
#       error_counter += -1
#     end
#   end


# #raises error message (raise/fail) (argumentError as opposed to another kind of error) about input
#   if error_counter > 0
#     fail ArgumentError.new("#{item_to_make} is not a valid input")
#   end
# #returns array associated with the key item_to_make
#   # zero specifies the first index
#   #creating the variable serving size in the wrong way using .values_at
#   #what would be a good way to program this?
#   #
#   serving_size = library.values_at(item_to_make)[0]
#   #assigning remaining ingredients to a variable using the modulus
#   remaining_ingredients = num_of_ingredients % serving_size


#   # Case statment
#   case remaining_ingredients

#   # If there are no remaining ingredients, Make #num_ingedients / serving size
#   when 0
#     return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
#   # If there are remaining ingredients, same as above, but also printing to the console the value of leftovers
#   else
#     # Suggesting a feature to supply suggested baking items needed to bake items
#     return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
#   end
# end

# p serving_size_calc("pie", 7)
# p serving_size_calc("pie", 8)
# p serving_size_calc("cake", 5)
# p serving_size_calc("cake", 7)
# p serving_size_calc("cookie", 1)
# p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)


#Refactor


def serving_size_calc(item_to_make, num_of_ingredients)
  # Add ingredient libary using same keys so we can call the items by the same key
  baked_goods =         {"cookie" => 1, "cake" =>  5, "pie" => 7}
  ingredients =         {"cookie" => ["Eggs","Butter","Chocolate Chips"],
                          "cake" => ["Eggs","Butter", "flour"],
                          "pie" => ["Pieshell", "Piemix", "Sugar"]
    }
  # Fail program if supplied arguement to make does not match an item in the library
  fail ArgumentError.new("#{item_to_make} is not a valid input") unless baked_goods.has_key?(item_to_make)

  # Technically, we don't need a serving_size variable, but I will keep it to make code cleaner
  serving_size = baked_goods[item_to_make]
  remaining_ingredients = num_of_ingredients % serving_size
  bake_count  = num_of_ingredients / serving_size

  # No conditional loops needed for having 0 remaining items
  # Add formatting in
  puts "You can make #{bake_count} #{item_to_make}(s)."
  puts
  puts "You will have #{remaining_ingredients} ingredients left over."
  puts
  puts "To make this #{item_to_make}, "
  puts

  print "We suggest that you purchase: "
  "#{ingredients[item_to_make].join(", ")}"

end

p serving_size_calc("pie", 7)

# Reflection

# 1.What did you learn about making code readable by working on this challenge?

#   I learned that even simple programs can be difficult to read if they are not written in an
#   easy to read fashion. Making a program "easy to read" can be done a number of different ways. One
#   way is by simplifying the variable names. Another way is by taking out useless or improper lines of
#   code. Also, if I am writing code that will be worked on by someone else (and even by me in the future),
#   I think that adding a few commments in for each chunk of code that defines the goal of that code can help
#   to make it more readable.

# 2.Did you learn any new methods? What did you learn about them?

#   Even though I'm fairly certain I've used this method, I definitely solidified the value of using
#   the ".has_key?" method to query a hash to check if any key in that hash matches the supplied value.
#   When I first approached this problem I wanted to iterate over the hash using .each, but I realized
#   that there was a method out there already that would simplify this (with the help of our guide).

# 3.What did you learn about accessing data in hashes?

#   Every time I work with a hash, I learn something new about them. I think that I solified my understanding
#   in what I can "expect to be returned" when I call a method on a hash. For instance, I thought
#   that library[food] would return the value 7 at first. Now I know that what's happening is that this
#   is returning a two element array which is going to produce a nil result.

# 4.What concepts were solidified when working through this challenge?

#   I think that after working on this challenge, I am once again, more comfortable refactoring code.
#   However, what was most unique about this challenge was that I was forced to interpret someone elses code
#   for the first time. I got a little "tunnel visioned" when I was trying to interpret this code at first
#   because it didn't make sense. What I realized through this challenge (with the help of our guide) was
#   that I have to take each chunk of code one piece at a time to get through it without freaking out. I
#   think I have better perspective and understanding of breaking up the code now.
