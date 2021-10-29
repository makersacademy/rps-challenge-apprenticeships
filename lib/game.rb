class Game

  def initialize(player1_name, player1_weapon, player2_name, player2_weapon) 
    @player1_name = player1_name
    @player1_weapon = player1_weapon
    @player2_name = player2_name
    @player2_weapon = player2_weapon
  end

  def winner
    'Winner'
  end

end