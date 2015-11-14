# Count Between

# I worked on this challenge [by myself, with: ].

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

def count_between(list_of_integers, lower_bound, upper_bound)
  number_of_integers = 0
  x = (list_of_integers.length - 1)
	while x > -1
		if list_of_integers[x] >= lower_bound && list_of_integers[x] <= upper_bound
			number_of_integers += 1 
			x = x - 1 
		else 
			x = x - 1 
		end
	end

	return number_of_integers
end

#testing

puts count_between([1,2,3], 0, 100)      # => 3
puts count_between([-10, 1, 2], 0, 100)  # => 2
puts count_between([10, 20, 30], 10, 30) # => 3
puts count_between([], -100, 100)        # => 0
puts count_between([0], 0, 0)            # => 1