# Concatenate Two Arrays

# I worked on this challenge [by myself].


# Your Solution Below

def array_concat(array_1, array_2)

	x = ( array_2.length - 1 )
  
  if x < 0 && array_1.length < 0
    return nil
  elsif x < 0 
  	return array_1
  else 
    while x > -1
    	array_1.push((array_2[x]))
    	x = x - 1
    end
   end
  return array_1
end

#
puts array_concat([1,2,3], [4,5,6]) 