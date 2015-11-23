a3 = [1,2,3,3,3]

:3 => 3



hashx = {
	:a => "beni";
	:b => "what"
}
puts hashx 

word = Hash.new 0

:1 => + :1 => 1



values.max

def mode(array)
	frequency - Hash.new(0)
	array.each do |item|
		frequency[item] += 1
	end
	new_array = []
	frequency.each do |word, occurance|
		if occurance == frequency.values.max
			new_array << word
		end
	end
	new_array
end

p mode()


=begin
pseudocode: 

1. accept an array 
2. turn array into hash 
3. for each key, if it occurs once, add 1 to its value 



output: array with most common values 
=end
