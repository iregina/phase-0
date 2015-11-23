#pseudocode:

# define a method that takes a list of names (a string)
# turn the list of names into an array
# set x = number of names in the array
# set y = x divided by 4 
# split the array of names into y groups 
# print the arrays 

#my solution:
=begin
def acc_group(list)
	array = list.split(", ")
	return array.each_slice(4).to_a
end

p acc_group("Jack, Mohammad, Zollie, Reuben, Dana, X, Y, Z, A, B, C, D, E")
=end 

#Luis: 
=begin
def grouping(students)
  sliced_s = students.each_slice(4).to_a
  	i = 3
  	sliced_s.each_with_index {|group, index| 
  		while group.length < i
  			group.each {|person| index << person}
  			i += 1
  		end
  		}
  	
end
=end
​
#method takes an array of strings

=begin 
What was the most interesting and most difficult part of this challenge?
The most difficult part was the challnege Luis asked me to try solve. He wants me
to figure out how to write a method that can eliminate groups of 3. I'm still
trying to figure that out.

Do you feel you are improving in your ability to write pseudocode and break the problem down?
Absolutely. I feel much more confident about what to do when I first write pseudocode.

Was your approach for automating this task a good solution? What could have made it even better?
I just practice good ruby doc habits. I wish I had more time to work ont his assignemnt. 

What data structure did you decide to store the accountability groups in and why?
I didn's store the group into a data strucutre. Ijust plugged them right into the method.

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
Sure did! I learned the each.slice method.

=end