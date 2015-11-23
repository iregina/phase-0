=begin
Pseudocode:

min size argument  

defining method that accepts 2 arguments (array, padding, *padding thing)

1. number is bigger than array size, identify 
the difference between second argument and the largest value
in the array int he first argument 

a. if there is an argument (3rd) then add 9difference) number of argument
to array

b. if there's no argeument, then add (difference) "nil"
to array

2. number is smaller & equal than array size 
returns array as is

print new array 
=end

# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.


# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution

def pad!(array, min_size, value = nil) #destructive
 # Your code here
 if min_size <= array.size
     return array
 else
     new_array_size = (min_size - array.size)
     while new_array_size > 0
         array.push(value)
         new_array_size = (new_array_size - 1)
     end
 end
 return array
end






#refactored solution 


def pad!(array, min_size, value = nil) #destructive
 # Your code here
 if min_size <= array.size
     array
 else
     while array.size < min_size
         array.push(value)
         array.size += 1
     end
 end
    array
end


# 3. Refactored Solution
def pad(array, min_size, value = nil) #non-destructive
 # Your code here
 new_array = []
 array2 = array.dup
 if min_size <= array2.size
     return array2
 else
     
     new_array_size = (min_size - array2.size)
     while new_array_size > 0
         new_array = new_array.push(value)
         new_array_size = (new_array_size - 1)
     end
     new_array = array2.concat(new_array)
     array = new_array
 end
end



# new refactored solution 


def pad(array, min_size, value = nil)
    new_array = array.dup
    new_array <<value while new_array.length < min_size
    new_array
end 



=begin
Reflection: 


Were you successful in breaking the problem down into small steps?
Yes! It was far simpler once we started breaking it down into small steps.

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
We had some difficultires working with the new methods and understanding what was destructive or not. Luckily, our friends in SF gave us a tip to start a new array, and that helped us a lot. 

Was your initial solution successful at passing the tests? If so, why do you think that is? 
If not, what were the errors you encountered and what did you do to resolve them?
We had errors where our method didn't work. 

When you refactored, did you find any existing methods in Ruby to clean up your code?
We did! 

How readable is your solution? Did you and your pair choose descriptive variable names?
Very readable. We did choose a descriptive variable name! 

What is the difference between destructive and non-destructive methods in your own words?
A Destructive method changes the input whereas the non-destructive method would keep the original input in tact. 