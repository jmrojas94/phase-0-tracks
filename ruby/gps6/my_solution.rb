# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Require relative is a method that takes in a string which is a path to a library/gem that is to be linked. Require is a method that is used to link library/gems not found within the directory.
#
require_relative 'state_data'

class VirusPredictor

  # This initialize method takes in 3 parameters which are the state, population density and population and declares them as instance variables.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # This method takes in the data from each of the private methods below (predicted deaths and speed of spread) and is used to call the data outside of the class.
  def virus_effects
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  private

  # This data takes in population density, population and state name and uses conditional statements to find predicted number of deaths by comparing population density with a given conditional integer and then multiplies the population by a given number to equal number of deaths, then prints out a statement with the state and number of deaths.
  def predicted_deaths(population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # This method takes in the population density and state data and uses conditional statements to find the speed of spread by adding a number to the speed based on the population density.
  def speed_of_spread(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each do |state_name, state_info|
# STATE_DATA.each do |state, population|
  
  # VirusPredictor.new(string, float, integer)
  
  
  
   state = VirusPredictor.new(state_name,
      state_info[:population_density],
      state_info[:population])
  # p state_name
  # p state_info
  # p state_info[:population_density]
  # p STATE_DATA["state"][:population_density]
    state.virus_effects
end


# when initializing a new object (with the .new method) you are passing 3 parameters, which sets the state of the object
# 1. state name, which is a string
# 2. population density for that state, which is a float
# 3. population for that state, which is an integer



#=======================================================================
# Reflection Section