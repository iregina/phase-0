# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts: 3
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================

p hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
 p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

p number_array = number_array.flatten!.map {
	|number| number += 5
}

#not destructive

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

p startup_names.each { |element| 

if element.is_a?(Array)
	element.each { |inner_element| 
		if inner_element.is_a?(Array)
			inner_element.each{ |third_layer_element| third_layer_element << "ly"}	
		else
			inner_element << "ly"
		end
	}
else
	element << "ly"
end

}

#Comment
=begin
What are some general rules you can apply to nested arrays?
Some general rules are that the type of methods you apply must be based on the value of the latest bracket. For example for house['kitchen']['fridge'], you should refer to 'fridge' to find out what type of methods to use (string, arrays, hashes, etc.)

What are some ways you can iterate over nested arrays?
You can use the .each method 

Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
I just used the ones I found.
=end