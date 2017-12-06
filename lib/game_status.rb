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

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    puts "hi"
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]
    if (board[win_index_1] == "X" && board[win_index_2] == "X" && board[win_index_3] == "X")
      return win_combination
    elsif (board[win_index_1] == "O" && board[win_index_2] == "O" && board[win_index_3] == "O")
      return win_combination
    else
      nil
    end
  end
end
