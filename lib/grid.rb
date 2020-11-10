require 'colorize'

class Grid
  attr_reader :board, :winner

  def initialize()
    @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    @winner = nil
  end

  def board_display
    row1 = "| #{@board[0]} | #{@board[1]} | #{@board[2]} |\n".colorize(:light_blue)
    separator = "--------------\n".colorize(:light_blue)
    row2 = "| #{@board[3]} | #{@board[4]} | #{@board[5]} |\n".colorize(:light_blue)
    row3 = "| #{@board[6]} | #{@board[7]} | #{@board[8]} |\n".colorize(:light_blue)
    row1 + separator + row2 + separator + row3
  end

  def update_board(player, position)
    @board[position] = player.token
  end

  def player_position(player)
    @board.each_with_index
      .select { |val, _index| val == player.token }
      .map { |row| row[1] }
  end

  def winner?(player1, player2)
    winning_conditions = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 4, 8], [2, 4, 6], [0, 3, 6], [1, 4, 7], [2, 5, 8]]
    x_position = player_position(player1)
    y_position = player_position(player2)
    winning_conditions.each do |condition|
      if condition & x_position == condition
        @winner ||= player1
        break
      elsif condition & y_position == condition
        @winner ||= player2
        break
      elsif @board.all?(String)
        @winner = 'draw'
      end
    end
    @winner
  end

  def check_valid?(position)
    if @board[position] == 'X' || @board[position] == 'O' ||
       position > 9 || position.negative? || !position.is_a?(Integer)
      return false
    end

    true
  end
end
