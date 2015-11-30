class CreditCard 
  
  def initialize(cc_number)
    @cc_string = cc_number.to_s.reverse.split("")
    raise ArgumentError, 'Credit Card Numbers must be 16 digits'unless
    @cc_string.length == 16
  end 
  
  def check_card
    
    cc_integer = @cc_string.map! { |number| number.to_i }
    cc_integer.map!.with_index { |value , index| 
      if index % 2 != 0
        value *= 2
      else 
        value
      end
      }
  
  final_string = cc_integer.map! { |number| number.to_s }

  string_array = final_string.join.split("")

  final_array = string_array.map! { |number| number.to_i }
  
  final_sum = final_array.inject(:+)
  
  if final_sum % 10 == 0
    p true
  else
    p false
  end
  
  end
end

=begin
Pseudocode:
Take number move to string
Split string into individual digits
Reverse (or run code from the back of the input)
back to integer

double every second digit
back to string 
split individual digits
back to integer 
add digits 
modulo 10 if true then it's valid

problems we still need to solve, 
break double digits, 
remove spaces from original string
=end


=begin

REFLECTION TIME:

What was the most difficult part of this challenge for you and your pair?
The most difficult part was communicating ideas on how to solve this idea
Luckily, we took things one step at a time and it became more clear how to solve
certain problems.


What new methods did you find to help you when you refactored?
I learned more about how to use .inject(:+) . join .split .map! .map!.with_index


What concepts or learnings were you able to solidify in this challenge?
I'm beginning to feel more comfortable with pseudocoding and breaking donw
algorithms one step a time. 
  
=end
