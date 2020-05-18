class TicTacToe
  
  WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
  
  def initialize
    @board = [" ", " "," "," "," "," "," "," "," "]
  end

  def display_board
    print " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    print "-----------"
    print " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    print "-----------"
    print " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  
  def input_to_index(input)
    input.to_i-1
  end
  
  def move(index, letter)
    @board[index]=letter 
  end
  
  def position_taken?(index)
    !@board[index].strip.empty?
  end
  
  def valid_move?(index)
    !position_taken?(index) && index.between?(0,8)
  end
  
  def turn_count
    count = 0
    @board.each do |letter|
      if !letter.strip.empty?
        count = count + 1
      end
    end
    count
  end
  
  def current_player
    turn_count.odd? ? "O" : "X"
  end
  
  def turn
    input = gets.chomp
    index = input_to_index(input)
    is_valid = valid_move?(index)
    while !is_valid 
    input = gets.chomp
    index = input_to_index(input)
    is_valid = valid_move?(index)
  end
    move(index, current_player)
    display_board
  end
  
  def won?
    winner = false
    WIN_COMBINATIONS.each do |combo|
     win_one,win_two,win_three = combo
     if @board[win_one]== @board[win_two] && @board[win_two]== @board[win_three]
      winner = combo
      break
      end
    end
    winner
  end
  
end




