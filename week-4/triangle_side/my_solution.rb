# I worked on this challenge [ with Ivy Vetor].


# Your Solution Below

#### First try - did not work

# def valid_triangle?(a, b, c)

# if a == 0 || b == 0 || c == 0
#       return false
#       # break
#   elsif a + b < c || a + c < b || a + c < b
#       return false #one side is greater than the two other sides
#       # break
#  else
# end
# if (a == b) && (b == c)
#       return true #equilateral
# elsif a**2 + b**2 == c**2
#       return true #right triangle
# elsif (a == b) || (b == c) || (c == a)
#       return true
# else
#       return false
# end

# end

# Refactor - Tested and working

def valid_triangle?(a, b, c)

if a == 0 || b == 0 || c == 0
  # puts "False"
  return false #Tested
end

if a + b < c || a + c < b || b + c < a
  # puts "False"
  return false
end

if (a == b) || (b == c) || (c == a)
  return true
end

# puts "True!"
return true



end

# valid_triangle?(1,1,2.01)