# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8],  # Bottom row
  [0,3,6],  # Left col
  [1,4,7],  # Middle col
  [2,5,8],  # Right col
  [0,4,8],  # Right diag
  [2,4,6],  # Left diag
]

def won(board)
  WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]
    if (win_index_1 == "X" && win_index_2 == "X" && win_index_3 == "X")
      win_combination
    elsif (win_index_1 == "O" && win_index_2 == "O" && win_index_3 == "O")
      win_combination
    else
      nil
    end
  end
  #x_positions = board.select{|i| i.eql?("X")}
  #o_positions = board.select{|i| i.eql?("O")}
  #if WIN_COMBINATIONS.include?(x_positions)
  #  x_positions
  #elsif WIN_COMBINATIONS.include?(o_positions)
  #  o_positions
  #else
  #  nil
end
