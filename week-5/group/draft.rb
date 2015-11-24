i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2 ]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

def my_hash_sorting_method(source)
	x = source
	older_than_4 = []
	younger_than_4 = []
	x.sort_by {|key, value| 
		if value >= 5
			older_than_4 << [key, value]
		else 
			younger_than_4 << [key, value]
		end
	}
	new_source = []
  new_source << older_than_4
  new_source << younger_than_4
  return new_source
end

p my_family_pets_ages
p my_hash_sorting_method(my_family_pets_ages)

=begin 
def my_array_splitting_method(source)
  words = []
  numbers = [] 
  source.each do |x| 
  	if x.is_a? String
  		words << x
  	else 
  		numbers << x
  	end
  end

  new_source = []
  new_source << numbers
  new_source << words
  return new_source
end

p my_array_splitting_method(i_want_pets)
=end

=begin
def my_hash_sorting_method(source)
	source.sort_by {|key, value| value}
end

p my_hash_sorting_method(my_family_pets_ages)

=end
=begin 
end
def my_array_sorting_method(source)
  words = []
  numbers = [] 
  source.each do |x| 
  	if x.is_a? String
  		words << x
  	else 
  		numbers << x
  	end
  end

  new_source = numbers.sort + words.sort
  return new_source
end


p my_array_sorting_method(i_want_pets)

=end

# array = {:hello => 3}

#source.map! {|x, value| value += number : value}
=begin
i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2 ]






def method(source, number)
	source.map! { |x| 
		if x.is_a?(Integer)
			x = (x + number)
		else
			x = x
		end
	}
end

p method(i_want_pets, 1)






=end







=begin

def method(source, number)
	#source.each { |k, v| source[k] = v + number }
	source.merge!(source) {|k,v| v + number}

end

array = {"a" => 1}

method(array, 1)

p array
=end



=begin

def my_array_modification_method!(source, thing_to_modify)
source.values.map! { |value| value + thing_to_modify}

end

source.values.map! { |value| value + thing_to_modify}
source

#.map .merge

each method = simple 
make variables more descriptive 

source.values.map!

a.map { |x| x+1 }

map! = both destructive 
each = not desitructive
=end