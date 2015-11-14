# Largest Integer

# I worked on this challenge [by myself, with: ].

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def largest_integer(array)

	x = ( array.length - 1 )
	
	if x < 0 
		return nil
	else 
		while x > 0
			if array[x] < array[(x-1)]
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
array = [1,2,30]

puts largest_integer(array)
