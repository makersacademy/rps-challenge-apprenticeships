class RPSGame

  attr_reader :player_1, :player_2

  def initialize(player1, player2 = "Computer")
    @player_1 = player1
    @player_2 = player2
  end

end