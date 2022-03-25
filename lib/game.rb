class Game
  DEFEATED_BY = {
    rock: :scissors,
    scissors: :paper,
    paper: :rock
  }

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def winner
    return player_1 if is_winner?(player_1, player_2)
    return player_2 if is_winner?(player_2, player_1)
  end
  
  private

  def is_winner?(player_1, player_2)
    player_2.weapon.to_sym == DEFEATED_BY[player_1.weapon.to_sym]
  end

end