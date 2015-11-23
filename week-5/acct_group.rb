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