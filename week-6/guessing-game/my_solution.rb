# Build a simple guessing game


# I worked on this challenge [by myself ].
# I spent [1] hours on this challenge.

# Pseudocode

# Input: integer
# Output: high, low, correct, true, or false
# Steps:
=begin
1. intialize the class by accepting integer "answer" as input, set an instance variable @answer as answer
2. define a method called "guess" that accepts an integer as input. If the integer is less
than the answer, return low. If the answer is equal to the answer, return correct. If the answer
is greater than the answer, return high. 
3. define a method called "solved?" that when ran tests if the last guess == answer, if so return true, if not return false
=end

# Initial Solution
=begin 
class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(input)
  	@input = input
  	if @input > @answer
  		p :high
  	elsif @input < @answer
  		p :low
  	else
  		p :correct
  	end
  end

  def solved?
  	if @input == @answer 
  		p true
  	else
  		p false
  	end
  end
end


=end


# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(input)
  	@input = input
  	case @input
  		when @input > @answer then p :high
  		when @input < @answer then p :low
  		else 
  		p :correct
  	end
  end

  def solved?
	p @input == @answer ? true : false
  end
 end

game = GuessingGame.new(5)
game.guess(10)
game.guess(1)
game.solved?
game.guess(5)
game.solved?



# Reflection
=begin
How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
Instance variables and methods represent real-world objects because they can take in a lot of new data and retrieve it. They
can also apply the same rules and behaviors across a variety of data. 

When should you use instance variables? What do they do for you?
You should instance variables when you will be retrieving them again in a nother method. They store information that has been inputted
and allow you use it again or change it again.

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
Flow control is how Ruby chooses a path through your program. I didn't have an issues because I made sure I set my instance
variables in the beginning of a method before performming any operations. 

Why do you think this code requires you to return symbols? What are the benefits of using symbols?
I think returning symbols is easier and a good alternative to strings. Perhaps symbols are good because it's easier to work with.

I couldn't help and look this up, but the benefits of using symbols is: 
Symbols are a type of immutable string, which means symbols help Ruby increase performance and Symbols stay in memory throughout the programs operation, we can quickly snag them from memory instead of instantiating a new copy every time.
Symbols have cut processing tim ein Ruby.


=end