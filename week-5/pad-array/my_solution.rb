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