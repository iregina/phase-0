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
