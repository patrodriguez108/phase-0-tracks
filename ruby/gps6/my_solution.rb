# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

# What require_relative is doing in this file is grabbing data from state_data.rb and making it available in my_solution.rb

class VirusPredictor

# this initialize method runs for each new instance and fills in the data for each of the attributes one state at a time

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# this virus_effects method is calling on two methods, the predicted_deaths method and speed_of_spread method



  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

# this predicted_deaths method has control flow and what that does is provide statistical data of number of deaths based off of the population density of each state

  def predicted_deaths
    predicted deaths is solely based on population density
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

# maybe need to find a way to write an algorithm that factors population density in number ranges

    # if @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.2).floor
    # else
    #   number_of_deaths = (@population * 0.05).floor

    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

# this speed_of_spread method also has control flow, and what that does is provide statistical data for the speed of spread of the virus based off of population density of each state

  def speed_of_spread
  #in months
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

STATE_DATA.each do |state, data|
  VirusPredictor.new(state, data[:population_density], data[:population]).virus_effects
end



#=======================================================================
# Reflection Section

# - One hash has the state name as the key and the other hash as the value; this hash uses quotes to list the key as well as a hash rocket to attach the value. The other hash has the keys (population_density and population) written out with a colon to attach the values (data attached to population_density and population).

# - require_relative grabs the data from a relative file. It differes from require in that require_relative considers the files to be relatives, the parent being the directory that they are in, while require needs to list the file based off of which folder it is in.

# - To iterate through a hash one needs to use block methods. A few ways to initiate a block method are using <hash>.each, <hash>.map, and <hash>.map!

# - Well in general what stood out to me the most about virus_effects was that it called instance methods that are written after it in the class. I had never seen this before, and before this GPS I had no idea that that was even possible. I also noticed that the parameters were listed as attributes, which I later discovered didn't need to be listed at all.

# - I would say that the concept of data structures was most solidified for me in this challenge. Since I started working in Ruby, I have had so many issues with data structures. I feel like this was a a great step in my understanding.