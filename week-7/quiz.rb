class Solitaire


   def initialize(example)
       @example = example
       letter?
       upcase
       split
       convert
       p @example
    end


    def letter?
    x = @example.length-1
    while x > 0
        y = @example[x]
        @example.delete! y unless y =~ /[[:alpha:]]/
        x -=1
    end 
    end
    

    def upcase
        @example.upcase!
        
    end
    

    def split
        @example = @example.gsub(/.{5}/, '\0')
    end
    
    def convert
        @example = @example.split("")
        p @example
        alphabet = ('A'..'Z').to_a
        @example.map! do |letter|
            letter = alphabet.index(letter)
        end
    end
end

example = "Code in Ruby, live longer!"
test = Solitaire.new(example)