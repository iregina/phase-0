#worked with Lindsay 

def valid_triangle?(a, b, c)
if (a + b < c) || (b + c < a) || (a + c < b)
 return false
elsif a == 0 || b == 0 || c == 0
 return false
else
 return true
end
end


puts valid_triangle?(3, 4, 5)
puts valid_triangle?(2, 2, 2)
puts valid_triangle?(0, 1, 0)
puts valid_triangle?(0, 0, 0)