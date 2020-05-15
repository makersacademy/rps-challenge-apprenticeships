class Player
  attr_accessor :player_pick
  def player_pick
    ["rock", "paper", "scissors"].sample
  end
end
