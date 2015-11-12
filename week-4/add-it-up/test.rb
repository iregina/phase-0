
def f(a)
	
	x = a.length
	sum = 0
	while x > 0
		sum += a[x-1]
		x -= 1
	end


	return sum

end

puts "the sum is:"
puts f([1,2,3])