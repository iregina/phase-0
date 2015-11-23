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

Which data structure did you and your pair decide to implement and why?
I'm honestly not sure what this means, but I think we used arrays. 

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 
At first not really, we were really stuck. I then also paired with Luis who helped me get through the first solution but then we worked together on refactoring this solution.

What issues/successes did you run into when translating your pseudocode to code?
We weren't sure which method to use. 

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
value.max was a new one that we had a little trouble implementing at first, but once we got it to work, it was a breeze. 



=end
