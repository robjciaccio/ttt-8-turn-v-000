board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input) #change string to integer
  index = user_input.to_i - 1
end

def turn(board) #main funtion
  puts "Please enter 1-9:" #intro
  input = gets.strip # gets user input
  index = input_to_index(input) #converts num to an integer and subtracts 1 for array purposes
 if index < 9 && index > -1 # gives a second try if user selected wrong option
  valid_move?(board, index) #checks if move is valid
    move(board, index) #places move on board
    display_board(board) #displays board updated with current moves
  else turn(board) #displays board from beginning to allow another try

end
  end


def move(board, index, char = "X") #actual move, default X
  board[index] = char #where on the board with which letter
end



def valid_move?(board, index) #checking to see if move is valid
  if position_taken?(board, index)
    false
  elsif index < 9 && index >= 0
    true
  end
end


def position_taken?(board, index) #may not be needed
 if board[index] == " "
   return false
 elsif board[index] == ""
   return false
 elsif board[index] == nil
   return false
 else board[index] == "X" || "O"
   return true
 end
end
