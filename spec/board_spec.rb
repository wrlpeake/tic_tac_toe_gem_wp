# frozen_string_literal: true

require_relative "../lib/tic_tac_toe_wp"
require_relative "../lib/board"

RSpec.describe Board do
  before(:each) do
    @board = Board.new
  end

  it "should return the game board" do
    expect(@board.load_game_board).to eql [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  it "should allow player x to mark the board via by choosing an integer" do
    position = 7
    player = "X"
    @board.update_game_board(player, position)

    expect(@board.load_game_board).to eql [1, 2, 3, 4, 5, 6, "X", 8, 9]
  end

  it "should allow player o to mark the board via by choosing an integer" do
    position = 5
    player = "O"
    @board.update_game_board(player, position)

    expect(@board.load_game_board).to eql [1, 2, 3, 4, "O", 6, 7, 8, 9]
  end
end
