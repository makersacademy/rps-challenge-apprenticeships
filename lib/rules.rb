class Rules
  MOVES = [:rock, :paper, :scissors]
  BEATS = { rock: :scissors, paper: :rock, scissors: :paper }

  attr_reader :moves, :beats

  def initialize
    @moves = MOVES
    @beats = BEATS
  end
end
