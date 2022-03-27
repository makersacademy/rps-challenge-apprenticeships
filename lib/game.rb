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

  def tie?
    player_2.weapon.to_sym == player_1.weapon.to_sym
  end

  def winner
    return player_1 if winner?(player_1, player_2)
    return player_2
  end
  
  private

  def winner?(p_1, p_2)
    p_2.weapon.to_sym == DEFEATED_BY[p_1.weapon.to_sym]
  end

end