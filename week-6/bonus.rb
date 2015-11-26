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

=begin
startup_names.each { |element|
	element.each { |inner_element|
		if inner_element.is_a?(Array)
			inner_element.each { |third_layer_element|
				third_layer_element << "ly"
			}
		else
			inner_element << "ly"
		end

	}

}
=end