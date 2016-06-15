# Virus Predictor

# I worked on this challenge [with: Cy Weisman ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Allows us to refer to the content of another file in the same directory.
# When using require, you must provide the whole path, not just the file name.
require_relative 'state_data'

class VirusPredictor

# Creates an instance of the VP class and passing in data to store upon initialization
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# Calls two methods in order, makes clean code. Also allows for updates/changes to underlying methods.
  def virus_effects
    predicted_deaths #(@population_density, @population, @state)
    speed_of_spread #(@population_density, @state)
  end

  private

# Models the potential number of deaths based on 5 brackets of population density
  def predicted_deaths #(population_density, population, state)
    # predicted deaths is solely based on population density

    #popd = [200, 150, 100, 50]
    #perc = [0.4, 0.3, 0.2, 0.1]

    #popd[i]

    if @population_density < 50
      number_of_deaths = (@population * 0.05)
    elsif @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    else @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

# Predicts the rate at which the virus will spread across the whole state based on 5 brackets of population density.
  def speed_of_spread #(population_density, state) #in months
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

STATE_DATA.each do |state, info|
  location = VirusPredictor.new(state, info[:population_density], info[:population])
  location.virus_effects
end

#alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
#alabama.virus_effects

#jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
#jersey.virus_effects

#california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
#california.virus_effects

#alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
#alaska.virus_effects


#=======================================================================
# Reflection Section
# The difference in the two hashes' syntax is that one uses "String" => value assignment, and the other uses symbol: value assignment
# require_relative tells Ruby that the document it's looking for is in the same directory. If you use require, you must specify the entire path of the file, even if it's in the same directory
# There are a number of different ways to iterate through hashes with #each methods - #each, #each_key, #each_pair, #each_value
# virus_effects uses instance variables as arguments, and it doesn't need to
# Scope was definitely the thing most solidified, and in close second was DRY best practices