# Simple Substrings

# I worked on this challenge [by myself].


# Your Solution Below
puts "where do you live"
address = gets.chomp

def welcome(x)
	if x.downcase.include? "ca"
		puts "Welcome to California"
	else
		puts "You should move to California"
	end
end


puts welcome(address)

