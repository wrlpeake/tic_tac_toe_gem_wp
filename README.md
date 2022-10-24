# TicTacToeWP - A RubyGem for Tic-Tac-Toe

This gem contains the game logic to play a game of tic-tac-toe on a 3X3 board with markers of 'X' and 'O'.

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add tic_tac_toe_wp

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install tic_tac_toe_wp

## Usage

Once you have installed the gem, you can initialize a new game by creating an instance of `TicTacToeWP::GameLogic.new(player_one_marker, player_two_marker)`, eg `@tictactoe = TicTacToeWP::GameLogic.new('X', 'O')`

This will create a game 'board' by initializing an array contains the integers 1-9. It will also initialize player one and player two with the markers you specify in the new game assignment above. You will then have access to the following methods to implement the game logic:

- `mark_game_board(marker, position)`
- `is_there_a_winner?`
- `validate_human_selection(position)`
- `get_first_spot_available`
- `check_board_horizontally?`
- `check_board_vertically?`
- `check_board_diagonally?`
- `check_diagonal_left_to_right?`
- `check_diagonal_right_to_left?`
- `get_game_board`
- `get_available_positions`

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` or `rspec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

