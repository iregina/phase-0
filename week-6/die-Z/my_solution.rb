# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [1] hours on this challenge.

# Pseudocode

# Input: takes in an array of strings 
# Output: one of the strings
# Steps:
=begin
1. first create a method that creates a new "class" die that accepts Input; 
Argument Error
2. if the method sides is called on die, then return the length of the items
in array
3. if method roll is called on die, then return a random number within array
=end

# Initial Solution

  	# @@sides = 6 class variable, every instance of the class will be this
  	  # $sides #global variable, almost always don't want to use this (no scope)
# actions that can take on object die; there's always going to be a initialize


class Die
  def initialize(labels)
  	unless labels.length > 0 #if the length is not greater than 0
  		raise "Enter in an array"
  	end
  	@labels = labels
  	@sides = labels.length
  end

  def sides
  	@sides 
  end

  def roll
  	@labels.sample
  end
end

my_Die = Die.new(["3"])
another_die = Die.new(["1", "2"])
p another_die.sides
p my_Die.sides



# Refactored Solution








# Reflection

=begin
	
What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
What does this exercise teach you about making code that is easily changeable or modifiable? 
What new methods did you learn when working on this challenge, if any?
What concepts about classes were you able to solidify in this challenge?
	
=end