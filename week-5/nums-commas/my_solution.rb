# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

#Question: Write a method separate_comma which takes a positive integer as its input and returns a comma-separated integer as a string.

# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?

#Define method that takes a positive integer (greater or equal to 0) as the input
#turn that input into a string
#starting from end of the string, move left and spit the string every three characters and add a comma 
#return the string as the output 

#Alternative pseudocode: 
#Define method that takes positive integer as the input
#add each character of integer.to_s into an array
#for each object that is -4, -8, - 12, -16 (multiple of 4) insert a comma 
#turn array back into string and return it as the output


#Divides str into substrings based on a delimiter, returning an array of these substrings

# 1. Initial Solution
=begin
def seperate_comma(integer)
	array = integer.to_s
	x = (array.length - 1) / 3 #number of commas needed

	while x > 0
		array.insert((-1 - 3*x),",")
		x -= 1
	end
	print array
end
=end



# 2. Refactored Solution

def separate_comma(integer)
	string = integer.to_s
	x = (string.length - 1) / 3
	while x > 0
		string.insert((-1 - 3*x), ",")
		x -= 1
	end
	return string
end

=begin
REFLECTION 

What was your process for breaking the problem down? What different approaches did you consider?
I first came up with a few possible ideas using the concepts that I knew, strings, arrays, and integers. My first approach was to find a command that could insert a comma every three intervals, but I couldn't find one that works perfectly and felt that I should start with a more simple solution. I then disect various inputs to see if I could find a pattern. I saw that when I am testing for 1000000 I will need two commas one at the -4 place and one at -7 place. I also noticed that I can only insert one comma at a time using a loop, so I should start with left to right when it comes to inserting commas. I also tested if this patterns were true for other numbers like 1000000000 - and it was! From then, on I just had to look for a command that allowed me to insert objects into arrays in specific spots and I found it using "insert"

Was your pseudocode effective in helping you build a successful initial solution?
It was really helpful because it gave me time to build a road map and think of ideas before becoming too deep and tangled in looking for commands. 

What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?

I learned .insert 

How did you initially iterate through the data structure?
I originally was trying to iterate it every 4 then 3 and realized because objects can only be inserted one at a time, it didn't work necessarily. 

Do you feel your refactored solution is more readable than your initial solution? Why?

Yes way more readble, super short and simple. I'm not sure if this method accounts
for everything though.


=end


