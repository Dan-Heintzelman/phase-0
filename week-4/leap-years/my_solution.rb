# Leap Years

# I worked on this challenge [by myself, with: ].


# Your Solution Below

# Create a method leap_year?
def leap_year?(year)
# Is year divisible by 4?
if year % 4 == 0  #FIRST IF
  #Continue evaluation
  if year % 100 == 0  #SECOND IF
    if year % 400 == 0  #THIRD IF
      return true
    else
      return false
    end  # THIRD IF END


  else
    return true
  end   # SECOND IF END

else
return false
end   # FIRST IF END


end

# leap_year?(2013)


#### Refactor - I don't think refactor is actually any more efficient, but it is different =D

# def leap_year?(year)

# # Is year divisible by 4?
# if year % 4 == 0  #FIRST IF
#   #Continue evaluation
#   if year % 100 == 0  && year % 400 == 0
#     return true
#   else
#     if year % 100 != 0
#       return true
#     else
#       return false
#     end
#   end
# else
# return false
# end   # FIRST IF END


# end

# leap_year?(2013)