# Smallest Integer

# I worked on this challenge [by myself].

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
=begin 
pseudocode:
input: list_of_num = [x,y,z]

set x = length of (list_of_nums - 1)
set y = x - 1
compare list_of_nums[x]
loop 

while x > 0 
	x = (list_of_nums.length - 1)
	if list_of_nums[x] > list_of_nums[x-1]
		list_of_nums.delete_at(x)
	else 
		list_of_nums.delete_at(x-1)
	end
end


	is list_of_num[x] > list_of_num[x-1]
	is list_of_num[x] > list_of_num[x-2]
	is list_of_num[x] > list_of_num[x-3]
	until 
	x = 0 

output: y 
=end 
=begin
list_of_nums = [2,5,3]
x = (list_of_nums.length - 1)
puts "this is x:"
puts x #2
puts
puts "this is the xth object:"
puts list_of_nums[x] #3
puts "this is 0th object:"
puts list_of_nums[0] #1
puts "1st:"
puts list_of_nums[1] #2
puts "2nd:"
puts list_of_nums[2] #3
puts
puts "this is the loop test:"

if list_of_nums[x] > list_of_nums[x-1] #true
	puts true
	list_of_nums.delete_at(x)
else
	puts false
	list_of_nums.delete_at((x-1))
end

puts
puts "this is random tests"
puts
puts "these numbers are currently in the array:"
puts list_of_nums #1,2
puts "this is x=0"
puts list_of_nums[0] #1
puts "this is x=1"
puts list_of_nums[1] #2
puts "this is x=2"
puts list_of_nums[2] #nil
=end
=begin
def smallest_integer(y)

	x = ( y.length - 1 )

	while x > 0

		if y[x] > y[(x-1)]
			puts "deleted the number #{y[x]}, but kept the number #{y[(x-1)]}"
			y.delete_at(x)
			puts "the remaining numbers in the array are #{y}"
			x = ( y.length - 1 )
		elsif y[x] < y[(x-1)]
			puts "didn't delete a number, so I moved onto the next one"
			y.delete_at((x-1))
			x = ( y.length - 1 )
		elsif y.length == 0
			return nil
		end
	end
	puts
	puts y

end

puts smallest_integer([1,2,-304,3,4,5,-2,6,10000])
=end

#my code: 

def smallest_integer(array)

	x = ( array.length - 1 )
	
	if x < 0 
		return nil
	else 
		while x > 0
			if array[x] > array[(x-1)]
				array.delete_at(x)
				x = ( array.length - 1 )
			else
				array.delete_at((x-1))
				x = ( array.length - 1 )
			end
		end
	end
	
	return array[x]

end

#where I test it: 
array = (-100..-10).to_a.shuffle

puts smallest_integer(array)

=begin
def smallest_integer(list_of_nums)

while x > 0 

	x = (list_of_nums.length - 1)

	if list_of_nums[x] > list_of_nums[x-1]
		list_of_nums.delete_at(x)
	else 
		list_of_nums.delete_at(x-1)
	end
end


end

puts smallest_integer([1, 2, 3]) 
=end
