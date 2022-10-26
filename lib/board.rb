# frozen_string_literal: true

class Board
  def initialize
    @game_board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def update_game_board(player, position)
    @game_board[position - 1] = player
  end

  def load_game_board
    @game_board
  end
end
