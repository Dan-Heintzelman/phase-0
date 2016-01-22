# Calculate a Grade

# I worked on this challenge [by myself, with: ].
#I worked with Ivy Vetor

# Your Solution Below
def get_grade(grade)
  if grade.to_i <= 59
  return 'F'
  elsif grade.to_i <= 69
  return 'D'
  elsif grade.to_i <= 79
  return 'C'
  elsif grade.to_i <=89
  return 'B'
  elsif grade.to_i <= 100
  return 'A'
  else
  return 'That\'s impossible'
  end
end