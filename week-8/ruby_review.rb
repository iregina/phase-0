# Cipher Challenge

# I worked on this challenge [by myself]
# I spent [#] hours on this challenge.

# 1. Solution
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.

# this first line here is defining a function called dr_evils_cipher which accepts an input
# in the form of a coded message! 

=begin
def dr_evils_cipher(coded_message)
# this next line set a variable to be equal to the input that is first splits each of the message and makes letter downcase character by character and turns it into an array 
  input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the Ruby docs.
 # this line set a variable an empty array 
  decoded_sentence = []
  # this the key to decoding the message 


  cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
            "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
            "g" => "c",
            "h" => "d",
            "i" => "e",
            "j" => "f",
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z"}

# this method is push each individual character to go through a loop
  input.each do |x| # What is #each doing here?
# this is set as false first becaues nothing has happened yet 
    found_match = false  # Why would this be assigned to false from the outset? What happens when it's true?
# this method is running each character in the code and comparing it to the cipher 
    cipher.each_key do |y| # What is #each_key doing here?
# when  a match is found it is changed to the real letter and then ebing added to the array 
      if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really?
        decoded_sentence << cipher[y]
        found_match = true

 # it is break here because it is done and will stop looping
        break  # Why is it breaking here?
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing?
        decoded_sentence << " "
        found_match = true
        break

      elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do?
        decoded_sentence << x
        found_match = true
        break
      end
    end
    if not found_match  # What is this looking for?
      decoded_sentence << x
    end
  end
  decoded_sentence = decoded_sentence.join("")
  #What is this method returning?
end
=end
# Your Refactored Solution

def dr_evils_cipher(coded_message)
input = coded_message.downcase.split("") 
decoded_sentence = []

alphabet = ('a'..'z').to_a
cipher = Hash[alphabet.map.with_index.to_a]
cipher.each { |k,v| cipher[k] = alphabet[v - 4] }

  input.each do |code_character| 
    found_match = false  
    cipher.each_key do |letter|  
      if code_character == letter
        decoded_sentence << cipher[letter]
        found_match = true
        break  
      elsif code_character == "@" || code_character == "#" || code_character == "$" || code_character == "%"|| code_character == "^" || code_character == "&"|| code_character =="*" 
        decoded_sentence << " "
        found_match = true
        break

      elsif (0..9).to_a.include?(code_character) # Try this out in IRB. What does   " (0..9).to_a "    do?
        decoded_sentence << code_character
        found_match = true
        break
      end
    end
    if not found_match  # What is this looking for?
      decoded_sentence << code_character
    end
  end
  decoded_sentence = decoded_sentence.join("")
  #What is this method returning?
end




# Driver Test Code:
p dr_evils_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver test code and should print true
# Find out what Dr. Evil is saying below and turn it into driver test code as well. Driver test code statements should always return "true."
p dr_evils_cipher("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
&fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l")
p dr_evils_cipher("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.")
p dr_evils_cipher("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
@m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.")
p dr_evils_cipher("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?")

# Reflection
# Keep your reflection limited to 10-15 minutes!
=begin 
------------
What concepts did you review or learn in this challenge? I reviewed how to run a loop and how to turn an array into a hash! 
What is still confusing to you about Ruby? I don't think I would be able to come up with this decipher code on my own, so I'm confused
about how to solve problems like this. I don't get how to deal with the numbers and symbols. 
What are you going to study to get more prepared for Phase 1? Numbers and symbols - and how to work with them in terms of snytax
=end