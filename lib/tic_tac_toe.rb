def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
  ]
  
board = ["X", "X", "X", "O", "O", " ", "X", " ", " "] 

def input_to_index(input)
  index = input.to_i - 1 
end

def move(board, index, char)
  !position_taken?(board, index) ? board[index] = char : nil
end

def position_taken?(board,index)
  !(board[index] == " " || board[index] == nil)
end

def valid_move?(board, index)
  !position_taken?(board, index) && index.between?(0,8)
end

def turn(board)
<<<<<<< HEAD
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index, current_player(board))
=======
  puts "Please enter: 1-9"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, input_to_index(input))
    move(board, index)
>>>>>>> 3db460b643edaf8bcc9134ad8ea539f89eda5402
    display_board(board)
  else
    turn(board)
  end
end

<<<<<<< HEAD
def turn_count(board)
  counter = 0
  board.each do |e|
    e == "X" || e == "O" ? counter +=1 : nil
  end
  counter
end

def current_player(board)
  turn_count(board) % 2 == 0 ? "X" : "O"
end

def won?(board)
  WIN_COMBINATIONS.find do |combo|
    board[combo[0]] == board[combo[1]] &&
    board[combo[0]] == board[combo[2]] &&
    position_taken?(board, combo[0])
  end
end

def full?(board)
  board.all? do |check|
    check == "X" || check == "O"
  end
end

def draw?(board)
  !won?(board) && full?(board)
end

def over?(board)
  draw?(board) || won?(board)
end

def winner(board)
  if !!won?(board)
    board[won?(board)[0]]
  end
end

def play(board)
  while !over?(board) 
    turn(board)
  end
  if won?(board)
    puts "Congratulations #{winner(board)}!"
  elsif draw?(board)
    puts "Cat's Game!"
  end
end



  
=======

>>>>>>> 3db460b643edaf8bcc9134ad8ea539f89eda5402
  