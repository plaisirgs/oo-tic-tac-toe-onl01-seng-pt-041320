require 'pry'
class TicTacToe
  
  WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,4,8], [2,4,6], [0,3,6], [1,4,7],[2,5,8]]
  
  def initialize
   @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end

  def display_board
    puts  " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts  "-----------------"
    puts  " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts  "-----------------"
    puts  " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  
  def input_to_index(input)
    input.to_i - 1
  end
  
  def move(position, letter)
    @board[position] = letter
  end
  
  def position_taken?(position)
    if @board[position] == " "
      false
    else
      true
    end
  end
  
  def valid_move?(position)
    if position >= 0 && position <= 8
       !position_taken?(position)
    else
      end
  end
  
  def turn_count
    count = 0
    (0..8).each do |position|
      if position_taken?(position)
        count += 1
      end
    end
    count
  end
  
  def current_player
    x_count = 0
    o_count = 0
    @board.each do |letter|
      letter
      if letter == "X"
        x_count += 1
      elsif letter == "O" 
        o_count += 1
      end
    end
    if x_count == o_count
      return "X"
    else
      return "O"
    end
  end
  
end




