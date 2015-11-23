=begin
array = {:hello => 3}

source.map! {|x, value| value += number : value}

def method(source, number)
	source.map! { |x| 
		if x.is_a?(Integer)
			x = (x + number)
		end
		x
	}
end

method(hash, 1)
=end



def method(source, number)
	#source.each { |k, v| source[k] = v + number }
	source.merge!(source) {|k,v| v + number}

end
array = {"a" => 1}
p method(array, 1)
p array

source.values.map! { |value| value + thing_to_modify}
source

#.map .merge

each method = simple 
make variables more descriptive 

source.values.map!

a.map { |x| x+1 }

map! = both destructive 
each = not desitructive
