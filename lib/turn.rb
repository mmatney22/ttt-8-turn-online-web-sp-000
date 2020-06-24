#input_to_index
def input_to_index(input)
  index = input.to_i - 1
end

#Display board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#position_taken?
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    return true
  end
end

#valid_move?
def valid_move?(board, index)
  if position_taken? == false && index.between(0, 8)
    return true
  else
    return false
  end
end

#move
def move(board, index, character = "X")

    board[index] = character
end

#turn
def turn(board)
  puts "Please enter 1-9:"
  until valid_move? == true
    turn(board)
  end
end
