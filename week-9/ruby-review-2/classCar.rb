class Car

   def initialize
     @distanceTraveled = 0
     @currentSpeed = 25
     @direction = 0
     @carCustomized = false
     @milage = 2
     @history = []
     @gasCost = 0
    end
  
  def customize 
    color = nil
    doors = nil
    # possibly refactor later
    if color != nil && doors != nil
      @carCustomized = true 
    else
      @carCustomized = false 
    end
  end

  def drive(number)
    @distanceTraveled += number
    addDistanceToHistory(number)
    totalDistance # we are just calling the method 
  end
  
  def addDistanceToHistory(number)
    @history << "Drove #{number} miles at #{@currentSpeed} mph at #{@direction} degrees"
  end
  
  def seeCurrentSpeed
    @currentSpeed
  end

  def accelerate(number)
    @currentSpeed = number
  end

  def deccelerate(number)
    @currentSpeed = number
    "You are currently driving at #{@currentSpeed} mph"
  end

  def turn(input)
    if input == "right"
      @direction += 90
    else
      @direction -= 90
    end
    
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
    @distanceTraveled 
    @gasCost = @milage * @distanceTraveled
    @gasCost
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

puts "Do you want to play this game?"
answer = gets.chomp 
if answer == "yes"
  game = Car.newclass Car

   def initialize
     @distanceTraveled = 0
     @currentSpeed = 25
     @direction = 0
     @carCustomized = false
     @milage = 2
     @history = []
     @gasCost = 0
    end
  
  def customize 
    color = nil
    doors = nil
    # possibly refactor later
    if color != nil && doors != nil
      @carCustomized = true 
    else
      @carCustomized = false 
    end
  end

  def drive(number)
    @distanceTraveled += number
    addDistanceToHistory(number)
    totalDistance # we are just calling the method 
  end
  
  def addDistanceToHistory(number)
    @history << "Drove #{number} miles at #{@currentSpeed} mph at #{@direction} degrees"
  end
  
  def seeCurrentSpeed
    @currentSpeed
  end

  def accelerate(number)
    @currentSpeed = number
  end

  def deccelerate(number)
    @currentSpeed = number
    "You are currently driving at #{@currentSpeed} mph"
  end

  def turn(input)
    if input == "right"
      @direction += 90
    else
      @direction -= 90
    end
    
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
    @distanceTraveled 
    @gasCost = @milage * @distanceTraveled
    @gasCost
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

puts "Do you want to play this game?"
answer = gets.chomp 
if answer == "yes"
  game = Car.new
else
  puts "goodbye!"
  break
end

puts "How far do you want to drive your car?"
length = gets.chomp
puts game.drive(length.to_i)

puts "Do you want to see your driving history for this trip?"
answertohistoryquestion = gets.chomp
if answertohistoryquestion == "yes"
  puts game.playByPlay
else 
  puts "goodbye!"
end
  
else
  puts "goodbye!"
end

puts "How far do you want to drive your car?"
length = gets.chomp
puts game.drive(length.to_i)

puts "Do you want to see your driving history for this trip?"
answertohistoryquestion = gets.chomp
if answertohistoryquestion == "yes"
  puts game.playByPlay
else 
  puts "goodbye!"
end
  