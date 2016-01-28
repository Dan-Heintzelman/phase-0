# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  count = 0
  source.each do |x|
    if source[count].is_a?(Integer)
      source[count] += thing_to_modify
      count += 1
    else
      count += 1
    end
  end
    return source
end


def my_hash_modification_method!(source, thing_to_modify)

   source.each do |x, y|
      source[x] += thing_to_modify
   end
  return source
end


# Identify and describe the Ruby method(s) you implemented.
#   1.) To iterate over the array, I used the .each method. I used a counter set to 0 before the
#   method so that when I first call the array to see if its an integer or not, I am
# calling the first item, which is source[0]. Since this needs to be destructive, adding the
#  value to the array permanently changes the value. You will notice that I tested each item in the
# array to see if it was an integer or not using .is_a?(Integer). If I wanted to test if it was a
# string or not, I could have used .is_a?(String).
#
# 2.)  To itereate over the hash, I used the same .each method, however I had to specify two
# arguments |key,value| to pass the code block. **Note, I used x and y instead of key and value.


# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.





# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.





# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?




