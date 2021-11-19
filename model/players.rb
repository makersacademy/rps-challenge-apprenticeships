class Players

  def initialize(players)
    @players = players
  end

  def player1
    if @players.is_a?(Array)
      @players[0]
    else 
      @players
    end
  end 

  def player2
    return @players[1] if @players.is_a?(Array)
  end 
  
end
