array = ["hello", 3]

source.map! {|x| x.is_a?(Integer) ? x += number : x}
def method(source, number)
	source.map! { |x| 
		if x.is_a?(Integer)
			x = (x + number)
		end
		x
	}
end

method(array, 1)