# 1. List of names of everyone in cohort

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
def group_create(cohort)
  if  cohort.length % 5 == 0
    #Write code to split group into even groups of 5, not necessary for our group.

  else
    counter = 1
    hash = Hash.new(0)
    group_count = cohort.length / 4
    modulus = cohort.length % 4

    group_count.times  do
    hash[counter] = cohort.slice!(0..3)
    counter += 1
    end
  end
  counter = 1   #Iterate through leftovers and push values into hash
  cohort.each do |string|
    hash[counter] << string
    counter += 1
  end
return hash
end

group_hash = group_create(cohort)

group_hash.each do |key,value|
 puts "Group " + key.to_s + " is:"
 puts value
 puts

end

# 3 Refactor