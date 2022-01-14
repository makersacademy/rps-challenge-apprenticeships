class Game
  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @winner = nil
  end

  attr_reader :player_1, :player_2, :winner

  def play(attack_1, attack_2)
    @winner = @player_1
  end

end