def serving_size_calc(item_to_make, order_quantity)
  inventory = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  error_counter = 3
  serving_size = inventory[item_to_make] 
  inventory.each do |food|
    error_counter += -1 if inventory[food] != serving_size
  end

  raise ArgumentError.new("#{item_to_make} is not a valid input") unless error_counter <= 0

  serving_size_mod = order_quantity % serving_size
  leftover = order_quantity/serving_size
  
   if serving_size_mod == 0
     return "Calculations complete: Make #{leftover} of #{item_to_make}"
  else
     return "Calculations complete: Make #{leftover} of #{item_to_make}, you have #{serving_size_mod} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
  end
end
=begin

REFLECTION

What did you learn about making code readable by working on this challenge?
I learned that making code readable isn't just making lines shorter. It's also
making sure they are easy to follow for new fresh eyes.

Did you learn any new methods? What did you learn about them?
I didn't learn a new method, but I learned new ways to use methods
like != and +=

What did you learn about accessing data in hashes? 
It's pretty important to keep track of which data set you are
going through.

What concepts were solidified when working through this challenge?
Nested hashes/arrays

=end