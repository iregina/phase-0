#Attr Methods

# I worked on this challenge [by myself]

# I spent [2] hours on this challenge.

# Pseudocode
=begin 
# Input: create a new Greeting (variable) called "greet"
# Output: a greeting (string)
# Steps:
1. Create two classes (NameData and Greetings)
2. In NameData, def initialize method that sets @name = "Regina"
3. In Greetings, def initialize method that creates a instance variable that equal NameData.new
4. define another method called hello that puts "Hello :name! How wonderful to see you today." 
=end


class NameData
	attr_reader :smoke

  def initialize
    @smoke = "regina"
  end
end

class Receiver
  def initialize
    @sentence = NameData.new #created a new variable that inherits methods from NameData Class 
  end

  def hello
    puts "Hello #{@sentence.smoke}! How wonderful to see you today."
  end
end

receiver = Receiver.new
receiver.hello 

=begin
class NameData
	attr_reader :name
	def initialize
		@name = "regina"
	end
end


class Greetings < NameData
	def intialize
		@namedata = NameData.new
	end
	def hello
		@namedata.name
	end
end

greet = Greetings.new
greet.hello
=end
=begin
# Reflection
Release 1:
What are these methods doing? 
These methods printing out pre-stored information and also take in new inputs to change the pre-stored information.
How are they modifying or returning the value of instance variables? 
They are using methods that refer to instance variables and either replacing the values of them using new input or returns an instance variable. I notice when I run this program again, the name goes back to Kim. etc. So it doesn't store the updated inputs outside the program. 

Release 2:
What changed between the last release and this release?
This release uses  attr_ attributes, more specifically an attr_reader, instead of def an entirely new method. 

What was replaced?
what_is_age method

Is this code simpler than the last?
Much simpler! 

Release 3: 
What changed between the last release and this release? Now we added attr_ attributes, more specifically attr_writer.
What was replaced?
the change_my_age was replaced.
Is this code simpler than the last?
Yes! 

Release 4: 
What is a reader method?
A reader method is a method that returns a value or object outside of the class, without changing it. 
What is a writer method? 
A writer method is a method that lets its value or object be changed outside the class, but does not return the updated/current value. 
What do the attr methods do for you?
Attribute methods allow you to save time and a shortcut for writing longer methods that do similar things (read, write, or both)
Should you always use an accessor to cover your bases? Why or why not?
Not all the time can make debugging difficult or lead to some accidental security
breaches because it's easy to accidentally give other methods too much access to changing the variable. 
What is confusing to you about these methods?
I was so confused about why a symbol was used with an attribute method, but I learned that it's because attribute is a method and can accept a paramater in which to create a variable. You can name a variable using symbols.


=end