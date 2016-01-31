# GENERAL PSEUDOCODE
# ***************************
#Define a method to make a grocery list
#input a string of groceries seperated by spaces
#define a method

#Create a new list

#Add an item with a quantity to the list

#Remove an item from the list
#Access the string input string and delete

#Update quantities for items in your list
#access the list key and quantities are the value to that key


#Print the list (Consider how to make it look nice!)
# ***************************


# Method to create a list

# input: string of items separated by spaces (example: "carrots apples cereal pizza")

# steps:
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]

# output: [what data type goes here, array or hash?]
#hash

def grocery_list(food)
 food_hash = Hash.new(0)
 food_array = food.split
 food_array.each do |food|
   food_hash[food] = 0
 end
food_hash
end


# Method to add an item to a list
# input: An item that is a string such as potato, that will be a key
# steps:
# I need to push the value of "input" into the array food_hash
# output: Will be the same hash with the new value added to it

g_list = grocery_list("apple icecream pizza banana")
def add_food(g_list,item)
  g_list[item] += 0
  g_list
end

# Method to remove an item from the list
  def del_food(g_list,item)
    g_list.delete_if {|k,v| k == item}
  end

# Method to update the quantity of an item
  # Access the list
  # Access the individual item and check on value
  # Change the value

  def upd_food(g_list,item,value)
    g_list[item] += value
    g_list
  end

# Method to print a list and make it look pretty

def print_list(g_list)
  puts "Todays Grocery List:"
  g_list.each do |key,value|
    if value == 0
      g_list.delete(key)
    else
  puts key.to_s + ": " + value.to_s
    end
  end
end

p grocery_list("apple icecream pizza banana")
p add_food(g_list,"potato")
p del_food(g_list,"potato")

p upd_food(g_list,"pizza",303)

print_list(g_list)



###### REFLECTION ########

1. What did you learn about pseudocode from working on this challenge?
  I learned that even though working on pseudcode can sometimes seem useless,
  it really helps to establish the thought process necessary to create the code.
  My peer decided that he wanted to write out pseudocode for the entire problem
  first before working on each method, which I thought was a great idea.

2. What are the tradeoffs of using Arrays and Hashes for this challenge?
  In my opionion, the value of using Hashes for this problem was that I could
  add items to my list as keys. However, we actually did use both arrays and
  hashes for this exercise so I actually think I got the best of those worlds.

3. What does a method return?
  A method returns a value which could be a string, integer, float, etc.

4. What kind of things can you pass into methods as arguments?
  You can pass Arrays, Hashes, variables, strings, floats, integers, and you can
  even pass other methods into methods. (As we learend in this exercise).

5.How can you pass information between methods?
  You can pass information between methods by essentially running a method with a value
  as an arguement inside of another method. The way we did this was by assigning
  a method to a variable. We then took that variable and put it as an argument
  in the next method.

6.What concepts were solidified in this challenge, and what concepts are still confusing?
  Since we did this GPS towards the end of the week, I feel like I've learned a lot. However,
  this particular GPS helped me to solifify how to add things to and remove things from hashes.
  I feel like some concepts are confusing, like regression, but they weren't really a challenge
  in this paticular exercise.
