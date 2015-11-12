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


Exercises

Address:
https://github.com/iregina/phase-0/blob/master/week-4/address/my_solution.rb

Math:
https://github.com/iregina/phase-0/blob/master/week-4/math/my_solution.rb

Reflection: 

How do you define a local variable?
A local variable is a variable that has been assgined to only
apply to a local method. 

How do you define a method?
A method is element that can be applied to an inpurt and 
result in an output. 

What is the difference between a local variable and a method?
A local variable can be assigned ahead of time or assigned 
as a result of a method. Method applies a set of rules and 
changes to the inpurt.

How do you run a ruby program from the command line?
I type in "ruby" and the file name.

How do you run an RSpec file from the command line?
I type in "rspec" and the file name

What was confusing about this material? What made sense?
I was a little bit confused about how to translate a
challenge into a method but I've slowly come to get the hang of it
and now it makes more sense.

