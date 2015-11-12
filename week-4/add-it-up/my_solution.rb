# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [with Reuben].
# make sure all pseudocode is commented out!

# Input:
# Output:
# Steps to solve the problem.


# 1. total initial solution





# 3. total refactored solution



def total(array)
	x = array.length
	sum = 0
		while x > 0
			sum += array[x-1]
			x -= 1
		end

	return sum

end

puts total([2,3,4])


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input:
# Output:
# Steps to solve the problem.
=begin
#Same before but make sure we add space between 
#all the strings
#at the very end add period
=end
# 5. sentence_maker initial solution



# 6. sentence_maker refactored solution

def sentence_maker(array)
	x = 0
	sum = ""

		while x < (array.length - 1)
			sum += array[x].concat " " 
			x += 1
		end 
			sum += array[x].concat "." 
	return sum

end

puts sentence_maker(["i", "want", "to", "go"])
