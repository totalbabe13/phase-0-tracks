# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative 

# Required relative, sources data/code from another document, similar to the relationship that css has with HTML
# You can work with a local source class, or data structure, Where as "require", scopes a sources the Ruby library at large
#

#
#
require_relative 'state_data'

class VirusPredictor

   # this method enables the instance variables/attributes to operate inside the class obect and help us define
   #what state this class has.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  
  


  #this method calls the other two methods at the same time. it consolidates the other two methods,
  #allowing the us to short hand the other two into one tidy method.
  def virus_effects
    predicted_deaths #(@population_density, @population, @state)
    speed_of_spread  #(@population_density, @state)
  end

  private
  

  # This method compares the population info from "state-data", makes a comparison,
  # and performs a multiplication operation, where the relust is stored in a variable-->
  # "Number of deaths" and the prints a string for the user using interpolation
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 50
      number_of_deaths = (@population * (@population_density / 50).floor * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end


  #This method takes 2 arguments as parameters, the name of the state and the population density.
  #based on the population density data from "State_data" data structure, it creates ranges to multiply it,
  #and stores the result in the "speed" variable given below, to be printed in a string via interpolation.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    else
      speed += 2.5 - ((@population_density / 50).floor * 0.5)
    end

    puts " and will spread across the state in #{speed} months.\n\n"
  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

 STATE_DATA.each do | state_name, population_info |
  
  new_state_instance = VirusPredictor.new(state_name, STATE_DATA[state_name][:population_density], STATE_DATA[state_name][:population])
 
  new_state_instance.virus_effects

end



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

#What are the differences between the two different hash syntaxes shown in the state_data file?
#the state keys are represented each a sindividual strings, where as the population data is 
#is stored as a symbol (poplation:) the semi-colon notation.

#What does require_relative do? How is it different from require?
# Required relative, sources data/code from another document, similar to the relationship that css has with HTML
# You can work with a local source class, or data structure, Where as "require", scopes a sources the Ruby library at large


#What are some ways to iterate through a hash?
#hashes have a many built in iterator methods, such as each, map, ect.. 
#but also you could use a loop


#When refactoring virus_effects, what stood out to you about the variables, if anything?
#What concept did you most solidify in this challenge? they are technically instance variables, 
#they are available through-out the class code. 