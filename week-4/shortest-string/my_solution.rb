# Shortest String

# I worked on this challenge [by myself].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below
def shortest_string(array)
	x = ( array.length - 1 )
	
	if x < 0 
		return nil
	else 
		while x > 0
			if array[x].length > array[(x-1)].length
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
array = ["hello","this","is","a","string"]

puts shortest_string(array)