# Analyze the Errors

# I worked on this challenge [by myself].
# I spent [1] hours on this challenge.

# --- error -------------------------------------------------------

# "Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.


# --- error -------------------------------------------------------

#def cartman_hates(thing)
#  while true
#    puts "What's there to hate about #{thing}?"
#   end
#end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#The error is occuring in the errors.rb file. 
#
# 2. What is the line number where the error occurs?
#line 15 although it says 172 in the command line
#
# 3. What is the type of error message?
#it is a syntax error
# 4. What additional information does the interpreter provide about this type of error?
#there is an unexpected end-of-input and was expecting the keyword end
# 5. Where is the error in the code?
#the error was in line 18 - there was an end missing there
# 6. Why did the interpreter give you this error?
#You need to close the while loop with an end.

 
# --- error -------------------------------------------------------

#south_park = 3

# 1. What is the line number where the error occurs?
# line 41
# 2. What is the type of error message?
# NameError
# 3. What additional information does the interpreter provide about this type of error?
# undefinied local variable or method for main:Object
# 4. Where is the error in the code?
#the entire word itself is the error
# 5. Why did the interpreter give you this error?
#you can't just have a word stand alone - the program is not sure
#whether it's a method or variabls 

# --- error -------------------------------------------------------

#def cartman(x)
#	return x + 1
#end

# 1. What is the line number where the error occurs?
#line 57
# 2. What is the type of error message?
#no method error
# 3. What additional information does the interpreter provide about this type of error?
#the computer think cartman is an undefined method
# 4. Where is the error in the code?
#the word itself 
# 5. Why did the interpreter give you this error?
#because it looks like its starting to be a method, but I didn't
#fill out the necessary info and conditions completely 

# --- error -------------------------------------------------------

#def cartmans_phrase(x)
#  puts "I'm not fat; I'm big-boned!"
#end

#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
#75
# 2. What is the type of error message?
#Argument Error
# 3. What additional information does the interpreter provide about this type of error?
#wrong number of arguments 1 for 0 
# 4. Where is the error in the code?
# line 79
# 5. Why did the interpreter give you this error?
# there isn't a place to input the string for that method
#we need to fix this so that the method can take inpurts

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
#  puts offensive_message
#end

#cartman_says("hello")

# 1. What is the line number where the error occurs?
#95
# 2. What is the type of error message?
#argumenterror
# 3. What additional information does the interpreter provide about this type of error?
#wrong number of arguments 0 for 1
# 4. Where is the error in the code?
#line 99
# 5. Why did the interpreter give you this error?
#we called the method but didn't give an inpurt, this method
#requires an input



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
#  puts "#{lie}, #{name}!"
#end

#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!','regina')

# 1. What is the line number where the error occurs?
#line 117
# 2. What is the type of error message?
#argument error
# 3. What additional information does the interpreter provide about this type of error?
#wrong number of arguements 1 for 2
# 4. Where is the error in the code?
#121
# 5. Why did the interpreter give you this error?
#This method asks for two arguments, and we only give it 1.

# --- error -------------------------------------------------------

#{}"Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
#Line 136
# 2. What is the type of error message?
#Type Error
# 3. What additional information does the interpreter provide about this type of error?
#string can't be coerced into fixnum
# 4. Where is the error in the code?
#beginning of the line
# 5. Why did the interpreter give you this error?
# you can multiply number and string with number first because
#that's not possibe, you can multipy a string many times but
#numbers can be mulitplied by strong

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/2


# 1. What is the line number where the error occurs?
#I assume 153
# 2. What is the type of error message?
#Zero Division Error
# 3. What additional information does the interpreter provide about this type of error?
# divided by 0
# 4. Where is the error in the code?
# in the end of the line
# 5. Why did the interpreter give you this error?
#its not possible to divide a number by 0... that will not result
#in the right output

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#170
# 2. What is the type of error message?
#LoadError
# 3. What additional information does the interpreter provide about this type of error?
#cannot load such file
# 4. Where is the error in the code?
#the file name
# 5. Why did the interpreter give you this error?
#the interpreter cannot find this file in my folder


# --- REFLECTION -------------------------------------------------------
=begin 
Which error was the most difficult to read?
the first one actually because I didn't know
that wasn't allowed - I never came across that kind of error bfore

How did you figure out what the issue with the error was?
I just read the description and read the code a few times 
and try to understand what is happening

Were you able to determine why each error message happened based on the code? 
Yes! Everythng made sense but if I couldn't see the code
I wouldn't be entirely sure.

When you encounter errors in your future code, what process will you follow to help you debug?
I will run the code and read the error and description and amke small one step tweaks
to my code to see if I understand what is wrong. 

=end