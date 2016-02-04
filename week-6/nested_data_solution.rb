# # RELEASE 2: NESTED STRUCTURE GOLF
# # Hole 1
# # Target element: "FORE"

# array = [
#   [1,2],
#   ["inner", ["eagle", "par", ["FORE", "hook"]]]

# ]

# # attempts:
# # ============================================================
# p array[1][1][2][0]


# # ============================================================

# # Hole 2
# # Target element: "congrats!"

# hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# # attempts:
# # ============================================================

# p hash[:outer][:inner]["almost"][3]

# # ============================================================


# # Hole 3
# # Target element: "finished"

# nested_data = {array: ["array", {hash: "finished"}]}

# # attempts:
# # ============================================================

# p nested_data[:array][1][:hash]

# # ============================================================

# # RELEASE 3: ITERATE OVER NESTED STRUCTURES

# number_array = [5, [10, 15], [20,25,30], 35]



# number_array.map! do |num| #num + 5
# if num.kind_of?(Array)
#   num.map! {|num| num + 5}
# else num + 5
# end
# end

# p number_array





# BONUS:
# startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

# startup_names.map! do |string| #num + 5
#   if string.kind_of?(Array)
#   string.map! do |string2|
#   if string2.kind_of?(Array)
#   string2.map! {|string3| string3 + "ly"}

#   else string2 + "ly"
#   end
#   end
#   else string + "ly"
#   end
# end

### BONUS REFACTOR
### Refactor this by checking to see if its a string first, if
# its not a string, pass it back in to the method (to itself)

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

def add_ly(array)
array.map! do |item|
  if item.kind_of?(Array)
  add_ly(item)
  else
  item += "ly"
end
end
end

#Driver Code

p add_ly(startup_names)

## 6.5 Reflection

# 1.  What are some general rules you can apply to nested arrays?

#   I think it is important to consider the affect of iterating over a nested array. While,
#   in many cases, you can iterate over a value in an array, such as "string" or a :symbol,
#   some iterators will not work well on an array, so you have to figure out how you will
#   handle this condition when iterating.

#   Also, I have learned from the bonus activity, that it's important how many levels deep
#   your arrays are nested, or certain if loops will break when they hit an an array within a
#   nested array. Line 65 through line 69 illustrates how we had to run a condition within a
#   condition to handle a double nested array.

# 2. What are some ways you can iterate over nested arrays?

#   In a standard single level nested array, its easy to run an IF condition to see if each
#   element is an array, and IF it is, there will be a behavior suitable for arrays, and
#   the ELSE statement would handle whatever behavior you'd want to perform on the non
#   arrray objects. We used the method .kind_of(Arry) to check if an object was an array. We
#   later found out that using a method that takes a single array is extremely use-
#   ful. If you encounter a nest within the array, then you pass it back through the method.
#   So essentially, the method is using itself to open up nests. Line 84 - 92 demonstrates
#   this.

# 3. Did you find any good new methods to implement or did you re-use one you were already
# familiar with? What was it and why did you decide that was a good option?

#   Prior to this exercise I was using is_a? instead of kind_of?. However, I learned that
#   they are pretty much synonomous. Beyond that method, the most innovative thing we did
#   was to create our own method to handle the nests.