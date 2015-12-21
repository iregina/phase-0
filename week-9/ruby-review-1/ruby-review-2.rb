# Create a Car Class from User Stories


# I worked on this challenge [by myself, with: ].


# 2. Pseudocode

#Pseudocode: 
# 1. Create a class called Car that does not take in any inputs 
# 2. After being instantiated, the initialize method will run a series of introductory messages explaining how the game works. 
# 2a. Set intial variables:
# distance traveled = 0 
# car customized = false 
# speed traveling = 25 mph
# Direction: N, S, E, or W
# 
# CUSTOMIZE
# 3. Create a new method called customize 
# 4. this method will run a series of prompts for the user to answer questions about how he/she wants to customize the car. The method will take the user's input and set it as a local variable for the game. 
# 4a. Set car customized = true 
# 
# DRIVE
# 5. Create a new method called drive 
# 6. This method will accept a number as input and add it to the distance traveled variable 
# 
# CHECK SPEED
# 7. define a method called checkSpeed that returns the speed traveling variable 
# 8. It will promt and ask if you want to accelerate or deccelerate and then by how much, and tell you which methods to run 
# 
# ACCELERATE 
# 9. This method will add 5 mph to the speed
# 
# DECELERATE 
# 10. This method will decrease 5 mph to the speed
# 
# Turn
# 11. Define a method that accepts left or right 
# 12. It will set the direction as N, S, E, W
# 
# Total distnace 
# 13. Define a method called total distance that will return the total miles traveled 
# 
# Stop
# 14. Define a method that changes speed to 0 
# 
# HISTORY
# 15. Shows steps of what happened/ log of every method 

# 3. Initial Solution


#(copied it below and refactored)

# 4. Refactored Solution
class Car
  
  attr_accessor :currentSpeed

   def initialize
     @distanceTraveled = 0
     @currentSpeed = 25
     @direction = 0
     @carCustomized = false
     @milage = 2
     @history = []
     @gasCost = 0
     @color = nil
     @door = nil
    end 
  
  def customize
    @carCustomized = true if (@color != nil) && (@doors != nil)
  end

  def drive(number)
    @distanceTraveled += number
    addDistanceToHistory(number)
    totalDistance # we are just calling the method 
  end
  
  def addDistanceToHistory(number)
    @history << "Drove #{number} miles at #{@currentSpeed} mph at #{@direction} degrees"
  end

  def turn(input)
    # ternary operator
    # conditional ? (what to do if true) : (what to do if false)
    input == "right" ? @direction += 90 : @direction -= 90
    
    # video is stuttering so I'm writing and talking :)
    # in terms of refacotring, if/elsif statements and case statements are more or less the same
    if @direction == 0
      # test puts vs return vs nothing
      "You are going North"
    elsif @direction == 90
      "You are going East"
    elsif @direction == 180
      "You are going South"
    else
      "You are going West"
    end
    
  end 
  
  # only gets called when this method is called
  def totalDistance
    @gasCost = @milage * @distanceTraveled
    "You've spent $#{@gasCost} for gas so far!"
  end

  def stop
    @currentSpeed = 0 
  end

  def playByPlay
    @history << "In total, I spent $#{@gasCost} in Gas"
    @history
  end
end

# this part makes it possible to run the game on the console 
# puts "Do you want to play this game?"
# answer = gets.chomp 
# if answer == "yes"
#   game = Car.new
  
#   puts "How far do you want to drive your car?"
#   length = gets.chomp
#   puts game.drive(length.to_i)

#   puts "Do you want to see your driving history for this trip?"
#   answertohistoryquestion = gets.chomp
#   if answertohistoryquestion == "yes"
#     puts game.playByPlay
#   else 
#     puts "goodbye!"
#   end
# else
#   puts "goodbye!"
# end

# 1. DRIVER TESTS GO BELOW THIS LINE

test = Car.new 

if test.is_a?(Car) == true
puts "User successfully created a car class!"
end 

if test.drive(0).is_a?(String) == true
puts "User successfully created a drive method"
end

if test.turn("right").is_a?(String) == true
puts "User successfully created a turn method"
end




# 5. Reflection
# What concepts did you review in this challenge?
# I reviewed the concept of creating driver test code. 

# What is still confusing to you about Ruby?
# I am still trying to figure out to test for methods that don't return anything. 

# What are you going to study to get more prepared for Phase 1?
# drive testing!

