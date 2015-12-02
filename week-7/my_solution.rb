
# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# loads a relative file using a relative path 
# so the data can be used by the class VirusPredictor
# it returns LoadError if the file's path cannot be determined
# 
# require loads a file and returns true/false if the
# file has already been loaded

#What is the purpose of "private"? What happens if you move it above virus_effects? When would you want to use this method?
#The private method ensures that the returned result only stays within the class and the method cannot be called with explicitly outside the class. If you move it above virus_effects, virus_effects won't be able to access it and the method wouldn't run. You use "private" when you don't someone to have direct access to particular methods. 

STATE_DATA = {
  "Alabama" => {population_density: 94.65, population: 4822023},
  "Alaska" => {population_density: 1.1111, population: 731449},
  "Arizona" => {population_density: 57.05, population: 6553255},
  "Arkansas" => {population_density: 56.43, population: 2949131},
  "California" => {population_density: 244.2, population: 38041430},
  "Colorado" => {population_density: 49.33, population: 5187582},
  "Connecticut" => {population_density: 741.4, population: 3590347},
  "Delaware" => {population_density: 470.7, population: 917092},
  "Florida" => {population_density: 360.2, population: 19317568},
  "Georgia" => {population_density: 172.5, population: 9919945},
  "Hawaii" => {population_density: 216.8, population: 1392313},
  "Idaho" => {population_density: 19.15, population: 1595728},
  "Illinois" => {population_density: 231.9, population: 12875255},
  "Indiana" => {population_density: 182.5, population: 6537334},
  "Iowa" => {population_density: 54.81, population: 3074186},
  "Kansas" => {population_density: 35.09, population: 2885905},
  "Kentucky" => {population_density: 110.0, population: 4380415},
  "Louisiana" => {population_density: 105.0, population: 4601893},
  "Maine" => {population_density: 43.04, population: 1329192},
  "Maryland" => {population_density: 606.2, population: 5884563},
  "Massachusetts" => {population_density: 852.1, population: 6646144},
  "Michigan" => {population_density: 174.8, population: 9883360},
  "Minnesota" => {population_density: 67.14, population: 5379139},
  "Mississippi" => {population_density: 63.50, population: 2984926},
  "Missouri" => {population_density: 87.26, population: 6021988},
  "Montana" => {population_density: 6.86, population: 1005141},
  "Nebraska" => {population_density: 23.97, population: 1855525},
  "Nevada" => {population_density: 24.8, population: 2758931},
  "New Hampshire" => {population_density: 147.0, population: 1320718},
  "New Jersey" => {population_density: 1205, population: 8864590},
  "New Mexico" => {population_density: 17.16, population: 2085538},
  "New York" => {population_density: 415.3, population: 19570261},
  "North Carolina" => {population_density: 200.6, population: 9752073},
  "North Dakota" => {population_density: 9.92, population: 699628},
  "Ohio" => {population_density: 282.5, population: 11544225},
  "Oklahoma" => {population_density: 55.22, population: 3814820},
  "Oregon" => {population_density: 40.33, population: 3899353},
  "Pennsylvania" => {population_density: 285.3, population: 12763536},
  "Rhode Island" => {population_density: 1016, population: 1050292},
  "South Carolina" => {population_density: 157.1, population: 4723723},
  "South Dakota" => {population_density: 10.86, population: 833354},
  "Tennessee" => {population_density: 156.6, population: 6456243},
  "Texas" => {population_density: 98.07, population: 26059203},
  "Utah" => {population_density: 34.3, population: 2855287},
  "Vermont" => {population_density: 67.73, population: 626011},
  "Virginia" => {population_density: 207.3, population: 8185867},
  "Washington" => {population_density: 102.6, population: 6724540},
  "Washington,D.C."=> {population_density: 10357, population: 632323},
  "West Virginia" => {population_density: 77.06, population: 1855413},
  "Wisconsin" => {population_density: 105.2, population: 5726398},
  "Wyoming" => {population_density: 5.851, population: 576412}
}


#require_relative 'state_data'

class VirusPredictor
  #initializes the instance variables state_of_origin as @state,
  # population_density as @population_density, & population as @population
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  
  #uses the method predicted_deaths with the instance variables
  # @population_density, @population, @state as the parameters
  #& uses the speed_of_spread with the instance variables
  # @population_density, @state as the parameters
  
  def virus_effects
    print "#{@state} will lose #{predicted_deaths } people in this outbreak and will spread across the state in #{speed_of_spread} months.\n"
  end

  private

  
  #calculates the predicted deaths for a state using
  # the population_density, population, & state values
  # prints a message with the state's name & the number of deaths
  def predicted_deaths
    # predicted deaths is solely based on population density
    case @number_of_deaths
      when @population_density >= 200 ; @number_of_deaths = (@population * 0.4).floor
      when @population_density >= 150 ; @number_of_deaths = (@population * 0.3).floor
      when @population_density >= 100 ; @number_of_deaths = (@population * 0.2).floor
      when @population_density >= 50 ; @number_of_deaths = (@population * 0.1).floor
      else @number_of_deaths = (@population * 0.05).floor
    end

    
  end

  
  #uses the values for population_density & state
  #to calculate how quickly the virus will spread
  #prints a message about how quickly the virus spread within months
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    
    if  @population_density >= 200
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
  end

end

def report(states)
  states.each do | state, value |
    #     VirusPredictor.new("Alabama", STATE_DATA["Alabama"][{population_density: 94.65, population: 4822023}])
    VirusPredictor.new(state, states[state][:population_density], states[state][:population]).virus_effects
  end
end


#=======================================================================

# DRIVER CODE


 # initialize VirusPredictor for each state
# Does this belong inside the class or outside of it? Why?
# It belongs outside the class because we are  creating an instance of this class for each state. We will be using the instances outside of this method to create a report. 

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


report(STATE_DATA)

#=======================================================================
# Reflection Section - Release 9
=begin
What are the differences between the two different hash syntaxes shown in the state_data file?
The first hash syntax is using an => symbol and the other syntax is a shorter version. They both mean the same thing.

What does require_relative do? How is it different from require?
require_relative allows the program to reach for a file in the same folder without having to type out the 
entire location address

What are some ways to iterate through a hash?
you can use each method 

When refactoring virus_effects, what stood out to you about the variables, if anything?
instance variables are a great way to refactor my program.

What concept did you most solidify in this challenge?
instance variables

=end



#population density is number of people per square mile as of 2012
#this data is updated every year with estimates from a 10 year census
=begin
What is going on with this hash? What does it have in it?
It's a hash with keys and each key's value is a hash
The key's values are a hash with the keys population_density and population.
The initial hash's keys use the hash rocket and the nested hashes use symbols.

What kind of variable is STATE_DATA, and what's its scope?
It's a constant and has a global scope.
=end
