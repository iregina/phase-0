# Research Methods

# I spent [10] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source.map(&:to_s).select {|item| item.include?(thing_to_find)}
end

def my_hash_finding_method(source, thing_to_find)
  source.select{|key,value| thing_to_find == value}.keys
end

# Identify and describe the Ruby method(s) you implemented.
# .select
# .map
#

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.map! { |x| 
    if x.is_a?(Integer)
      x = (x + thing_to_modify)
    else
      x = x
    end
  }
end

def my_hash_modification_method!(source, thing_to_modify)
  source.merge!(source) {|k,v| v + thing_to_modify}
end

# Identify and describe the Ruby method(s) you implemented.
# .merge!
# .is_a
#


# Person 3
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

def my_hash_sorting_method(source)
   source.sort_by {|key, value| value}
end

# Identify and describe the Ruby method(s) you implemented.
# .each
# .sort_by
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.delete_if { |word| word.to_s.include? thing_to_delete }
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.delete_if {|key, value| key == thing_to_delete }
end

# Identify and describe the Ruby method(s) you implemented.
# delet_if
#
#


# Person 5

def my_array_splitting_method(source)
  words = []
  numbers = [] 
  source2 = source
  source2.each do |x| 
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

def my_hash_splitting_method(source, number)
  x = source
  older_than_4 = []
  younger_than_4 = []

  x.sort_by {|key, value| 
    if value > number
      older_than_4 << [key, value]
    else 
      younger_than_4 << [key, value]
    end
  }

  new_source = []
  new_source << younger_than_4
  new_source << older_than_4
  return new_source

end

p my_family_pets_ages
p my_hash_splitting_method(my_family_pets_ages,3)

# Identify and describe the Ruby method(s) you implemented.
# .sort_by
# <<
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
# It's pretty exciting and easy to explain once you have one of the model to work with
# because some of the methods used in one challenge could be reused in another.
