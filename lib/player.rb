# frozen_string_literal: true

class Player
  attr_accessor :marker

  def initialize(marker)
    @marker = marker
  end

  def get_move(position)
    position
  end
end
