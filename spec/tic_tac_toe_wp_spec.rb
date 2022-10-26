# frozen_string_literal: true

require "stringio"

RSpec.describe TicTacToeWP::GameLogic do
  before(:each) do
    @tic_tac_toe_wp = TicTacToeWP::GameLogic.new("X", "O")
  end

  it "has a version number" do
    expect(TicTacToeWP::VERSION).not_to be nil
  end

  it "should recognise when there is a winner" do
    marker = "X"
    @tic_tac_toe_wp.mark_game_board(marker, 1)
    @tic_tac_toe_wp.mark_game_board(marker, 2)
    @tic_tac_toe_wp.mark_game_board(marker, 3)

    expect(@tic_tac_toe_wp.is_there_a_winner?).to be true
  end
end
RSpec.describe TicTacToeWP::GameLogic do
  before(:each) do
    @tic_tac_toe_wp = TicTacToeWP::GameLogic.new("X", "O")
  end
  it "should check for three in a row horizontally" do
    marker = "O"
    @tic_tac_toe_wp.mark_game_board(marker, 7)
    @tic_tac_toe_wp.mark_game_board(marker, 8)
    @tic_tac_toe_wp.mark_game_board(marker, 9)

    expect(@tic_tac_toe_wp.check_board_horizontally?).to be true
  end

  it "should check for three in a row vertically" do
    marker = "O"
    @tic_tac_toe_wp.mark_game_board(marker, 2)
    @tic_tac_toe_wp.mark_game_board(marker, 5)
    @tic_tac_toe_wp.mark_game_board(marker, 8)

    expect(@tic_tac_toe_wp.check_board_vertically?).to be true
  end
end
RSpec.describe TicTacToeWP::GameLogic do
  before(:each) do
    @tic_tac_toe_wp = TicTacToeWP::GameLogic.new("X", "O")
  end
  it "should check the board for three in a row diagonally" do
    marker = "X"
    @tic_tac_toe_wp.mark_game_board(marker, 3)
    @tic_tac_toe_wp.mark_game_board(marker, 5)
    @tic_tac_toe_wp.mark_game_board(marker, 7)

    expect(@tic_tac_toe_wp.check_board_diagonally?).to be true
  end

  it "should check for three in a row diagonally from top left to bottom right" do
    marker = "X"
    @tic_tac_toe_wp.mark_game_board(marker, 1)
    @tic_tac_toe_wp.mark_game_board(marker, 5)
    @tic_tac_toe_wp.mark_game_board(marker, 9)

    expect(@tic_tac_toe_wp.check_diagonal_left_to_right?).to be true
  end
end
RSpec.describe TicTacToeWP::GameLogic do
  before(:each) do
    @tic_tac_toe_wp = TicTacToeWP::GameLogic.new("X", "O")
  end
  it "should check for three in a row diagonally from top right to bottom left" do
    marker = "O"
    @tic_tac_toe_wp.mark_game_board(marker, 3)
    @tic_tac_toe_wp.mark_game_board(marker, 5)
    @tic_tac_toe_wp.mark_game_board(marker, 7)

    expect(@tic_tac_toe_wp.check_diagonal_right_to_left?).to be true
  end
end
RSpec.describe TicTacToeWP::GameLogic do
  before(:each) do
    @tic_tac_toe_wp = TicTacToeWP::GameLogic.new("X", "O")
  end
  it "should recognise when a game has been tied" do
    player_one_marker = "X"
    player_two_marker = "O"
    @tic_tac_toe_wp.mark_game_board(player_one_marker, 1)
    @tic_tac_toe_wp.mark_game_board(player_one_marker, 2)
    @tic_tac_toe_wp.mark_game_board(player_two_marker, 3)
    @tic_tac_toe_wp.mark_game_board(player_two_marker, 4)
    @tic_tac_toe_wp.mark_game_board(player_one_marker, 5)
    @tic_tac_toe_wp.mark_game_board(player_one_marker, 6)
    @tic_tac_toe_wp.mark_game_board(player_one_marker, 7)
    @tic_tac_toe_wp.mark_game_board(player_two_marker, 8)
    @tic_tac_toe_wp.mark_game_board(player_two_marker, 9)

    expect(@tic_tac_toe_wp.get_available_positions).to eql []
  end
end
RSpec.describe TicTacToeWP::GameLogic do
  before(:each) do
    @tic_tac_toe_wp = TicTacToeWP::GameLogic.new("X", "O")
  end
  it "validate_human_player_selection() should return 0 if the human player selection is valid" do
    position = 4

    validation_code = @tic_tac_toe_wp.validate_human_player_selection(position)

    expect(validation_code).to eql 0
  end

  it "validate_human_player_selection() should return 1 if the human player selection is not an int between 1-9" do
    position = 13

    validation_code = @tic_tac_toe_wp.validate_human_player_selection(position)

    expect(validation_code).to eql 1
  end
end
RSpec.describe TicTacToeWP::GameLogic do
  before(:each) do
    @tic_tac_toe_wp = TicTacToeWP::GameLogic.new("X", "O")
  end
  it "validate_human_player_selection() should return 2 if the human player selection has already been chosen" do
    @tic_tac_toe_wp.mark_game_board("O", 5)

    position = 5

    validation_code = @tic_tac_toe_wp.validate_human_player_selection(position)

    expect(validation_code).to eql 2
  end

  it "validate_game_type_selection() should return an integer between 1 and 4 for the game mode" do
    game_type_selection = 3

    validation_code = @tic_tac_toe_wp.validate_game_type_selection(game_type_selection)
    expect(validation_code).to eql game_type_selection
  end
end
RSpec.describe TicTacToeWP::GameLogic do
  before(:each) do
    @tic_tac_toe_wp = TicTacToeWP::GameLogic.new("X", "O")
  end
  it "validate_game_type_selection() should return 0 if the selection is anything other than a number between 1-4" do
    game_type_selection = 6

    validation_code = @tic_tac_toe_wp.validate_game_type_selection(game_type_selection)
    expect(validation_code).to eql 0
  end

  it "should keep track of the positions that are available as the game progresses" do
    position = 9
    marker = "X"
    @tic_tac_toe_wp.mark_game_board(marker, position)

    expect(@tic_tac_toe_wp.get_available_positions).to eql [1, 2, 3, 4, 5, 6, 7, 8]
  end
end
RSpec.describe TicTacToeWP::GameLogic do
  before(:each) do
    @tic_tac_toe_wp = TicTacToeWP::GameLogic.new("X", "O")
  end
  it "should return the first available spot on the board" do
    expect(@tic_tac_toe_wp.get_first_spot_available).to eql 1
  end

  it "should check that if a position has been taken, it should no longer be available" do
    position = 6
    marker = "O"
    @tic_tac_toe_wp.mark_game_board(marker, position)

    expect(@tic_tac_toe_wp.position_available?(position)).to be false
  end

  it "should create a player with a marker as an attribute" do
    marker = "£"
    @player_one = @tic_tac_toe_wp.create_player(marker)

    expect(@player_one.marker).to eql marker
  end
end
