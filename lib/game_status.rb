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
  WIN_COMBINATIONS.each do |winning_triplet|
    winning_triplet.detect? do |square|
      board[square] == "X" || board[square] == "O"
    end
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
