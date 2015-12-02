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


board = [[33, 34, 1, 22, 7],
        [6, 69, 75, 65, 73],
        [5, 85, 97, 89, 57],
        [3, 31, 96, 68, 51],
        [2, 33, 33, 33, 33]]

class Bingo

  def initialize(board)
    @game_piece = board
    @letter = ["B","I","N","G","O"]
    @number = (1..100).to_a
  end
  
  #@@numbers_drawn = []
  
  def lottery_draw
    @random_number = []
    @number_drawn = @number.sample
    
    @letter_drawn = @letter.sample
    @random_number << @letter_drawn
    @random_number << @number_drawn
    @numberletter = @random_number.join
  end
  
  #&& inner_index == @letter.index[@letter_drawn]
  
  def check_number
    @game_piece.each_with_index do |row, index|
      row.each_with_index do |inner_element, inner_index| 
        if inner_element == @number_drawn && inner_index ==           @letter.index(@letter_drawn)
          @game_piece[index][inner_index] = "X"
        end
        end
        end
  end
  
  # def add_number_to_bank
   # @@numbers_drawn << @numberletter
 # end
  
  def run_the_game
  until self.winner_row == true || self.winner_column == true
      self.lottery_draw
    #if @@numbers_drawn.include? @numberletter
      self.check_number
    #end
  end
    p "Bingo"
  end
  
  def winner_row
    @game_piece[1].uniq.size == 1 || @game_piece[2].uniq.size == 1 || @game_piece[3].uniq.size == 1 || @game_piece[4].uniq.size == 1 || @game_piece[0].uniq.size == 1
  end
  
  def winner_column   
  index = @letter.length - 1
  until index == 0
  if @game_piece[0][index] == @game_piece[1][index] && @game_piece[2][index] == @game_piece[3][index] && @game_piece[4][index] == @game_piece[0][index]
    true 
  else 
    index = index - 1
  end
  end
  end
  
  def number_of_draws
    @@instances
  end

end

new_game = Bingo.new(board)
#new_game.lottery_draw
#new_game.check_number
new_game.run_the_game
p board[0]
p board[1]
p board[2]
p board[3]
p board[4]
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