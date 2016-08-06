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
    predicted_deaths
    speed_of_spread
  end

  private

  # This data takes in population density, population and state name and uses conditional statements to find predicted number of deaths by comparing population density with a given conditional integer and then multiplies the population by a given number to equal number of deaths, then prints out a statement with the state and number of deaths.
  def predicted_deaths
    number_of_deaths = 0.0
    density = {200 => 0.4, 150 => 0.3, 100 => 0.2, 50 => 0.1, 0 => 0.5}

    density.each do |average, multiplier|
      if @population_density >= average
        number_of_deaths = (@population * multiplier).floor
      end
    end
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # This method takes in the population density and state data and uses conditional statements to find the speed of spread by adding a number to the speed based on the population density.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 

    if @population_density >= 200 
      0.5
    elsif @population_density >= 150 
      1
    elsif @population_density >= 100 
      1.5
    elsif @population_density >= 50
      2
    else
      2.5
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
  state = VirusPredictor.new(state_name, 
    state_info[:population_density], 
    state_info[:population])
    state.virus_effects
end

#=======================================================================
# Reflection Section

What are the differences between the two different hash syntaxes shown in the state_data file?

One is a hash rocket and the other is a symbol.

What does require_relative do? How is it different from require?

require_relative is a method that takes in a string with a file name that will be linked to the code. Require is the same thing however it takes in a string with a library or gem name and imports all data within.

What are some ways to iterate through a hash?

Using a method like .each or .map. 

When refactoring virus_effects, what stood out to you about the variables, if anything?

That the variables were instance variables that are available to be called throughout the class.

What concept did you most solidify in this challenge?

Using hashes, accessing them, iterating through them and refactoring. Another concept I learned was testing with "p".