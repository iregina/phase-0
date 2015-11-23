# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [3] hours on this challenge.

# 0. Pseudocode

# Input: a number greater than 1 
# Output: either an error message, the number/input, or a number between 1 ad the number
#if the number is less 1, error
#if the calling side then return the number 
#if roll then return a random number 
# Steps:


# 1. Initial Solution
=begin
class Die
  def initialize(sides)
    unless sides > 1
    	raise ArgumentError.new("Please pick a larger number than 1")
    end
    @sides = sides
  end

  def sides
    return @sides
  end

  def roll
    return rand(1..@sides)
  end
end

=end

# 3. Refactored Solution

class Die
  def initialize(sides)
    raise ArgumentError.new("Please pick a larger number than 1") unless sides > 1
    @sides = sides
  end

  def sides
    return @sides
  end

  def roll
    return rand(1..@sides)
  end
end

# 4. Reflection
=begin

What is an ArgumentError and why would you use one?
ArgumentError is a parameter you can set to filter out the inputs being recieved that
the user will know what type of input to give.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
I used rand for the first time. It was pretty exciting. I did have trouble understanding
why I had to insert a 1 in it. 

What is a Ruby class?
Ruby class is used to describe the outline of a series of methods.

Why would you use a Ruby class?
When you need to referenes to multiple objects.

What is the difference between a local variable and an instance variable?
Local variable is only visisble within the method. Instance variable has a @ as a prefix and created once the object is created. It
hangs around when the object is created.  

Where can an instance variable be used?
It could be used across various methods.
	
=end



