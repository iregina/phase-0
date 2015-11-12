# Factorial

# I worked on this challenge [with Rueben].

# Your Solution Below
def factorial(number)
 result=1
 if number == 0
   return 1
 else
   while (number>0)
     result *= (number)
     number -= 1
   end
 end
return result
end

puts factorial(4)
