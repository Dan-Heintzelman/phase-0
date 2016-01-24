# Longest String

# I worked on this challenge [by myself].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below
def longest_string(list_of_words)
  # iterate over every word
  length_index = list_of_words.count - 1
  # puts length_index

  length_index.times do
  # count the number of letters in that words
  count_1 = list_of_words[0].length
  count_2 = list_of_words[1].length
  # store that to a temporary value
  # count the number of letters in the next word
  # store that to a tempvalue_2 too
  # Compare one to two, remove lowest value
  if count_1 > count_2
    list_of_words.delete_at(1)
  else
    list_of_words.delete_at(0)
  end
  end
  return list_of_words[0]
end

longest_string(['cat', 'zzzzzzz', 'apples'])

## This uses the same exact method as 4.6.3, I just have to reverse the comparative operator from < to >. I can also do sort here and grab the last value in the array (theoretically).