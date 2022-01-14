class RPS

  attr_reader :player, :opponent

  def initialize(player, opponent)
    @player = player
    @opponent = opponent.generate_choice
  end
end