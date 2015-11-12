=begin
Full name greeting: Write a program that asks 
for a person's first name, then middle, then last. 
Finally, it should greet the person using their full name.
=end

puts "What is your first name?"
first_name = gets.chomp
puts "What is your middle name?"
middle_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp

puts "Hello, " + first_name + " " + middle_name + " " + last_name + "!"

=begin
Bigger, better favorite number: Write a program that 
asks for a person's favorite number. Have your 
program add 1 to the number, and then suggest the 
result as a bigger and better number.
=end

puts "What is your favorite number?"
fav_num = gets.chomp
better_num = fav_num.to_i + 1
puts "What don't you make " + better_num.to_s + " your new favorite number?"


Exercises:


Reflection: 

How do you define a local variable?
How do you define a method?
What is the difference between a local variable and a method?
How do you run a ruby program from the command line?
How do you run an RSpec file from the command line?
What was confusing about this material? What made sense?

