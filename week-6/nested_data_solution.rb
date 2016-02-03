# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [
  [1,2],
  ["inner", ["eagle", "par", ["FORE", "hook"]]]

]

# attempts:
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================

p hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================

p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]



number_array.map! do |num| #num + 5
if num.kind_of?(Array)
  num.map! {|num| num + 5}
else num + 5
end
end

p number_array





# Bonus:
startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.map! do |string| #num + 5
  if string.kind_of?(Array)
  string.map! do |string2|
  if string2.kind_of?(Array)
  string2.map! {|string3| string3 + "ly"}

  else string2 + "ly"
  end
  end
  else string + "ly"
  end
end

### refactor this by checking to see if its a string first, if
# its not a string, pass it back in to the method


# p startup_names

# startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

# startup_names.map! do |el1, el2, el3|
#   if el2 == nil
#     el1.to_s.concat("ly")
#   elsif
#     el1.to_s.concat("ly")
#     el2.to_s.concat("ly")
#   else
#     el1.to_s.concat("ly")
#     el2.to_s.concat("ly")
#     el3.to_s.concat("ly")
#   end

# end

# p startup_names