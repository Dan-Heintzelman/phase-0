# Virus Predictor

# I worked on this challenge [with Jack Pults].
# We spent [1.5] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor
#Takes one states statistics and assigns it to instance variables.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  #This method will run two of our other methods, predicting the deaths, and speed of spread.

  def virus_effects
    predicted_deaths
    speed_of_spread
  end

   private # all methods that follow will be made private: not accessible for outside objects

  #Takes the population density and population. Based on the density, it will multiply the population of the state by a different factor, rounding it to the next lowest integer. (Half a person can't die.) Then prints out this result.

  def predicted_deaths
    # predicted deaths is solely based on population density

    increment_factor = (0.1 * (@population_density/50))
    number_of_deaths = (@population * increment_factor).floor

    # if @population_density >= 200
    #   number_of_deaths = (@population * 0.4).floor
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    # else
    #   number_of_deaths = (@population * 0.05).floor
    # end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # Takes the population density, and based on it, prints the speed at which the disease will spread across the state in months.
  def speed_of_spread
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0 #in months

    if @population_density >= 200
      increment = 200
    else
      increment = @population_density
    end

    speed = (2.5 - (0.5 * (increment/50)))



#     if @population_density >= 200
#     elsif @population_density >= 150
#       speed += 1
#     elsif @population_density >= 100
#       speed += 1.5
#     elsif @population_density >= 50
#       speed += 2
#     else
#       speed += 2.5
#     end

    puts " and will spread across the state in #{speed.round(2)} months.\n\n"

  end

end

#=======================================================================


 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

# REFACTORED DRIVER CODE
# Creates a new class fore each state and prints result.

STATE_DATA.each do |key, value|

state = VirusPredictor.new(key, value[:population_density], value[:population] )

state.virus_effects

end




#=======================================================================
# Reflection Section


# 1.What are the differences between the two different hash syntaxes shown in the
# state_data file?

#  The key/value hash for the first level uses the => symbol to separate the key and the value. The nested
#  key/value pair inside of key "state" uses a symbol separate between the key and value. For intance,
#  population_density: 94.65. The connector i => is not used.

# 2.What does require_relative do? How is it different from require?

#   Require relative starts by loading the specified file so that its contents can be accessed. Require
#   relative means that the file name will be a relative path from the current directory. If require
#   is used instead, then it will search for the file name in the deafault locations on your computer rather
#   than just the current directory.

# 3.What are some ways to iterate through a hash?

#   The way we iterated through a hash was with the .each method supplying |key, value| as parameters to
#   access the hash. There are many other ways that a hash can be iterated through. You can use .each_key
#   .each_value .each_pair methods as well and there are many other on ruby docs.

# 4. When refactoring virus_effects, what stood out to you about the variables, if anything?

#   What stood out about the variables is that they were intance variables, so there was no reason to pass
#   them as arguements to the other methods in the class. This is why we removed all of the arguments in
#   all three methods (virus_effects, predicted_deaths, and speed_of_spread).

# 5. What concept did you most solidify in this challenge?

#   I further solified making isntances of classes and instance variables. Other than that, I further
#   solidified accessing values from hashes.

