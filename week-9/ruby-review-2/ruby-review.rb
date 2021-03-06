# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself, with: Steven Jones].


# 2. Review the simple assert statement

# name = "bettysue"
# p name
# p name == "bettysue" 



# def assert
#   raise "Assertion failed!" unless yield
# end

# name = "bettysue"
# assert { name == "bettysue" } 
# assert { name == "billybob" } 


# 2. Pseudocode what happens when the code above runs
# 1) Define 'assert' method
# 2) IF the block that is passed to the assert method evaluates to FALSE
#       THEN, return an error message that says "Assertion failed!"
#    IF the block that is passed to the assert method evalutes to TRUE
#       THEN, yield to the next line in the driver code.


# 3. Copy your selected challenge here

# SOLUTION TO THE CHALLENGE HERE:

def smallest_integer(array)

  x = ( array.length - 1 )
  
  if x < 0 
    return nil
  else 
    while x > 0
      if array[x] > array[(x-1)]
        array.delete_at(x)
        x = ( array.length - 1 )
      else
        array.delete_at((x-1))
        x = ( array.length - 1 )
      end
    end
  end
  
  return array[x]

end


# RSPEC FILE HERE:

# require_relative "my_solution"

# describe 'smallest_integer' do
#   it "returns nil when the array is empty ([])" do
#     expect(smallest_integer([])).to be_nil
#   end

#   it "returns 0 when that is the only element in the array" do
#     expect(smallest_integer([0])).to eq 0
#   end

#   it "returns -10 when that is the only element in the array" do
#     expect(smallest_integer([-10])).to eq -10
#   end

#   it "returns -10 for [-10, 0, 10]" do
#     expect(smallest_integer([-10, 0, 10])).to eq -10
#   end

#   it "returns 1 for [1, 2, 3]" do
#     expect(smallest_integer([1, 2, 3])).to eq 1
#   end

#   it "returns -30 for [-10, -20, -30]" do
#     expect(smallest_integer([-10, -20, -30])).to eq -30
#   end

#   it "returns the smallest positive integer regardless of ordering" do
#     array = (1..100).to_a.shuffle

#     expect(smallest_integer(array)).to eq 1
#   end

#   it "returns the smallest negative integer regardless of ordering" do
#     array = (-100..-10).to_a.shuffle

#     expect(smallest_integer(array)).to eq -100
#   end
# end
# Status API Training Shop Blog About Pricing









# 4. Convert your driver test code from that challenge into Assert Statements
def assert
  raise "Argument error" unless yield
end


assert { p smallest_integer([]) == nil }
assert { p smallest_integer([0]) == 0 }
assert { p smallest_integer([-10]) == -10}
assert { p smallest_integer([-10, 0, 10]) == -10} 
assert { p smallest_integer([1, 2, 3]) == 1 }
assert { p smallest_integer([-10, -20, -30]) == -30}
assert {
  array = (1..100).to_a.shuffle
  p smallest_integer(array) == 1
  }
assert { 
  array = (-100..-10).to_a.shuffle
  p smallest_integer(array) == -100
  }
assert { p smallest_integer([1,2,3]) == 3 } # Test to make sure assert method throws error when block evaluates to FALSE

# 5. Reflection

# What concepts did you review in this challenge?
#In this challenged I reviewed the concept of "raise" and .shuffle method. 
# What is still confusing to you about Ruby?
#I'm a bit confused about how to create driver code and would liek to learn more about it.
# What are you going to study to get more prepared for Phase 1?
# I would like to review other students' work who have completed this challenge. 

