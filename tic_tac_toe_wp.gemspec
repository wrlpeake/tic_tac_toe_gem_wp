# frozen_string_literal: true

require_relative "lib/tic_tac_toe_wp/version"

Gem::Specification.new do |spec|
  spec.name = "tic_tac_toe_wp"
  spec.version = TicTacToeWP::VERSION
  spec.authors = ["wrlpeake"]
  spec.email = ["wrlpeake@gmail.com"]

  spec.summary = "The game logic for the a tic-tac-toe game on a 3X3 board"
  spec.homepage = "https://github.com/wrlpeake/tic_tac_toe_gem_wp"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.1"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/wrlpeake/tic_tac_toe_gem_wp"
  spec.metadata["changelog_uri"] = "https://github.com/wrlpeake/tic_tac_toe_gem_wp/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "guard-rspec"
  spec.add_dependency "rspec"
  spec.add_dependency "rubocop"
  spec.add_dependency "simplecov"
end
