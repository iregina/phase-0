=begin 
def pad!(array, min_size, value = nil) #destructive
 # Your code here
 if min_size <= array.length
     array
 else
     while array.length < min_size
         array.push(value)
     end
 end
    array
end

p pad!([1,2,3], 5, "word")

=end 
=begin
#Futher Refactoring

def pad!(array, min_size, value = nil) #destructive
 # Your code here
     while array.length < min_size
         array.push(value)
     end
    	array
end

p pad!([1,2,3], 2, "word")

#Futher Refactoring

def pad!(array, min_size, value = nil) 
    array << value while array.length < min_size 
    array
end

# fruther refactoring 

=end

def pad!(array, min_size, value = nil) #destructive
 # Your code here
clone.fill(value, array.length - min_size, array)
   
end



test_array = [1,2,3]
p pad!(test_array, 10, "word")
p test_array