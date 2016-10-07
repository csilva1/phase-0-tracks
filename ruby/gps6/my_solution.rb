# Virus Predictor

# I worked on this challenge by myself
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#it complements the builtin method require by allowing to load a file that 
#is relative to the file contaning the require relative
require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
#no need (@population_density, @population, @state)
#(@population_density, @state) because 'predicted deaths' and 'spead of spread' already has
#have those parameters
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
#removed (population_density, population, state) because predicted deaths already calculates
#the number of deaths, based on the thresholds of the population_density
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      factor = 0.4
    elsif @population_density >= 150
      factor = 0.3
    elsif @population_density >= 100
      factor = 0.2
    elsif @population_density >= 50
      factor = 0.1
    else
      factor = 0.5
    end

    number_of_deaths = (@population * factor).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  #removed '(population_density, state) ' calculates how fast the virus will spread, based on population_density thresholds
  def speed_of_spread#in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
   

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects


#=======================================================================
# Reflection Section

=begin
The STATE_DATA hash is a nested data structure. The hash itself uses the state name, as a string, for the key and then a hash rocket, and then
the state population info, or the value, as another hash. WIthin this nested hash, the format changes so that the keys are symbols.
Using a symbol as a key can make the program run a little faster, but the state names themselves are strings, perhaps because I
want to show them to the user in the report? Though I could have had them as symbols and sumply converted them to strings when printing.
both require and require_relative are used to include or import other ruby code from other files into then file you are working in.
with require 'filename', you must include the $LOAD_PATH<<"." where . is the filepath to the director containing the file you are trying to import
with require_relative 'filename', you are specifying the filepath relative to the current file, so you don't need to load the filepath if the 
file you are importing is in the same directory of the file you are working in.
I used .each, but I could have used each_key or  each_pair
 Instance variables are available to all class methods for that instance, so I could just use them freely when
defining the methods. Thus, I could simply delete the delete the instance variables from the virus effects method, as well as from the line containing
def speed_of_spread and def predicted_death
I think the concept that most sunk in for me was the scope of instance variables. I understood that we could use them in the different class
methods that we write, but some fo the consequences of that were still a little confusing. I think I have a much better udnerstanding of what that means now,
and can write code that is more DRY.
=end