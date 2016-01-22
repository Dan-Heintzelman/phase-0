# I worked on this challenge [by myself, with: ].
# Worked with Ivy Vetor

# Your Solution Below

def valid_triangle?(a, b, c)

if a == 0 || b == 0 || c == 0
      return false

  elsif a + b < c || a + c < b || a + c < b
      return false #one side is greater than the two other sides
end
if (a == b) && (b == c)
      return true #equilateral
elsif a**2 + b**2 == c**2
      return true #right triangle
elsif (a == b) || (b == c) || (c == a)
      return true
else
      return false
end







end
