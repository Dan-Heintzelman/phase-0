# 1. List of names of everyone in cohort
# Driver Code
cohort = ["Alivia Blount","Alyssa Page","Alyssa Ransbury","Andria Reta","Austin Dorff","Autumn McFeeley","Ayaz Uddin","Ben Giamarino","Benjamin Heidebrink","Bethelhem Assefa","Bobby Reith","Dana Breen","Brett Ripley","Rene Castillo","Justin J Chang","Ché Sanders","Chris Henderson","Chris Pon","Colette Pitamba","Connor Reaumond","Cyrus Vattes","Dan Heintzelman","David Lange","Eduardo Bueno","Liz Roche","Emmanuel Kaunitz","FJ","Frankie Pangilinan","Ian Fricker","Ian Thorp","Ivy Vetor","Jack Baginski","Jack Hamilton","JillianC","John Craigie","John Holman","John Maguire","John Pults","Jones Melton","Tyler Keating","Kenton Lin","Kevin Serrano","wolv","Kyle Rombach","Laura Montoya","Luis Ybarra","Charlotte Manetta","Marti Osteyee-Hoffman","Megan Swanby","Mike London","Michael Wang","Michael Yao","Mike Gwozdek","Miqueas Hernandez","Mitchell Kroska","Norberto Caceres","Patrick Skelley","Peter Kang","Philip Chung","Phillip Barnett","Pietro Martini","Robbie Santos","Rokas Simkonis","Ronu Ghoshal","Ryan Nebuda","Ryan Smith","Saralis Rivera","Sam Assadi","Spencer Alexander","Stephanie Major","Taylor Daugherty","Thomas Farr","Maeve Tierney","Tori Huang","Alexander Williams","Victor Wong","Xin Zhang","Zach Barton"]

# 2. Pseudocode MVP

# Input: List of names
# Output : Groups of no less than 3, no more than 5 made from the list array cohort
# Steps to complete

# puts cohort.length % 4
# puts cohort.length / 4

# 15 People
# 3 Groups of 4
# Remainder 3
# def group_create(cohort)
#   if  cohort.length % 5 == 0
#     #Write code to split group into even groups of 5, not necessary for our group.

#   else
#     counter = 1
#     hash = Hash.new(0)
#     group_count = cohort.length / 4
#     modulus = cohort.length % 4

#     group_count.times  do
#     hash[counter] = cohort.slice!(0..3)
#     counter += 1
#     end
#   end
#   counter = 1   #Iterate through leftovers and push values into hash
#   cohort.each do |string|
#     hash[counter] << string
#     counter += 1
#   end
# return hash
# end

# group_hash = group_create(cohort)

# group_hash.each do |key,value|
#  puts "Group " + key.to_s + " is:"
#  puts value
#  puts

# end

# 3 Refactor

def group_create(cohort)
  cohort_new = cohort.dup  # Add this code in to make this non destructive
  if  cohort_new.length % 5 == 0
    #Write code to split group into even groups of 5, not necessary for our group.

  else
    counter = 1
    hash = Hash.new(0) # Create a new hash with default value of 0

    group_count = cohort_new.length / 4  # Determine group count for groups of 4
    group_count.times  do            # Create new groups with the key of counter value
    hash[counter] = cohort_new.slice!(0..3)
    counter += 1
    end
  end
  counter = 1   #Iterate through leftovers and push values into hash
  cohort_new.each do |string|
    hash[counter] << string
    counter += 1
  end
return hash
end

  group_hash = group_create(cohort)

  group_hash.each do |key,value|
    puts "Group #{key} is:"
    puts value
    puts

end


#4 Reflection

1. What was the most interesting and most difficult part of this challenge?

  I really enjoyed this challenge because I actually feel like this code is useful in the real
  world. It made me feel like I was writing something that I could use in the future, but It
  also made it easier to conceptualize my inputs and outputs. The most challenging part of this
  challenge was figuring out what to do with the leftover cohort-mates. I took me a few minutes
  to determine how to add them back into the array.

2. Do you feel you are improving in your ability to write pseudocode and break the problem down?

  I think I am always improving my abilty to write pseudocode. This probably has to do with the
  fact that I was so bad at it originally!

3. Was your approach for automating this task a good solution? What could have made it even better?

  I think my approach was good! I like the fact that this code doesn't just work for the supplied
  inputs, this would work for any cohort that requires groups 5 or less. Unfortunately, it will not
  create a group of 3, but I don't see why this would need to be done.

4. What data structure did you decide to store the accountability groups in and why?

  I decided to store the accountability groups in a hash because from the beginning I knew that I
  was going to use want the key to be the group number. I supposed I could have used and array,
  but I think using a Hash allows for more flexibility in the future.

5. What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

  I liked my initial solution quite a bit. In my refactoring I essentially cleaned up the code a bit.
  I had one line of code that was uncesssary that I forgot to remove. I also used string interpolation
  as an alternate way to print my output. I did not learn any new ruby methods in the refactor this
  time around.
