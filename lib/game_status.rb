# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0,1,2],
  [0,3,6],
  [0,4,8],
  [1,4,7],
  [2,5,8],
  [3,4,5],
  [6,7,8],
  [6,4,2]
]

def won?(board)
  WIN_COMBINATIONS.each do |winning_array|
  win1 = winning_array[0]
  win2 = winning_array[1]
  win3 = winning_array[2]
  if win1 == "X" && win2 == "X" && win3 == "X"
    win = winning_array
  elsif win1 == "O" && win2 == "O" && win3 == "O"
    win = winning_array
  else false
  end
return win
end
end


def full?(board)
  board.all? do |index|
    index == "X" || index == "O"
  end
end

def draw?(board)
  full = full?(board)
  won = won?(board)
  if full == false
    return false
  elsif full == true && won == true
    return false
  elsif full == true && won == false
    return true
  end
end

def winner?(board)
  winner_combo = won?(board)
  winner = winner_combo[0]
return winner
end
