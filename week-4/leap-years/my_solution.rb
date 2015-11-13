# Leap Years

# I worked on this challenge [by myself].


# Your Solution Below

def leap_year?(year)
	
	if (year % 4 == 0) && ((year % 100 != 0) || (year % 400 == 0))
	return true
	else
	return false
	end
	
end

puts leap_year?(2016)
puts leap_year?(2015)
puts leap_year?(2014)
puts leap_year?(2012)
puts leap_year?(400)
puts leap_year?(100)