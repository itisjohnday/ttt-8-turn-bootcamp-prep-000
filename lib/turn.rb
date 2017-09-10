def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]}"
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]}"
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]}"
end

def input_to_index(input)
  index = input.to_i - 1
  return index
end

def valid_move?(board, index)
  if (position_taken?(board, index) || (index < 0 || index > 8))
    return false
  else
    return true
  end
end

def position_take?(board, index)
  if (board[index] == 'X' || board[index] == 'O')
    return true
  else
    return false
  end
end

def move(board, index, token = 'X')
  if (valid_move?(board,index))
    board[index] = token
  else
    puts "Please enter a valid move"
  end
  return board
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  
  if (valid_move?(board,index))
    move(board,index)
  else 
    puts "Invalid input"
    turn(board)
  end
end
