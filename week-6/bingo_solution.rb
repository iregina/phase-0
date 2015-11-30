# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [2:43 Am] hours on this challenge.


# Release 0: Pseudocode
# Outline:
# Create a class called "BingoBoard"

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #create an array that contains b i n g o in string
  #assign a random letter to a variable
  #create an array that contains 1...100
  #assign the random number to a variable
  #Return a number/variable than equal a random number/letter chosen from both arrays

# Check the called column for the number called.
  #take the variable and identify the index number of the letter in the array above
  #run a loop that tests if the number of the variable matches the index of the array
  #in each of the subarrays


# If the number is in the column, replace with an 'x'
  #if the number exists as that index value in the arrays replace the numebr with "x"

# Display a column to the console
  #fill in the outline here

# Display the board to the console (prettily)
  #fill in the outline here

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
    p board
  end

  def call
    @letter = ["B", "I", "N", "G", "O"]
    @number = (1..100).to_a
    @selected_letter = @letter.sample
    @selected_number = @number.sample
    @selected_call = "#{@selected_letter}#{@selected_number}"
  end

  def check
    @letter_index = @letter.index(@selected_letter)
    p @letter_index

    @bingo_board.each { |element| 
      if element[@letter_index].each == @selected_number
        element[@letter_index].replace["X"]
        p "You got one!"
        
      end

    }
  end

end

# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
p new_game.call
new_game.check


#Reflection