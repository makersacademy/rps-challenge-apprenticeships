

class Multiplayer
  attr_reader :currentplayer
  def initialize(player1, player2)
    @currentplayer = player1
    @player1 = player1
    @player2 = player2
    @players = [player1, player2]
    @rps = ['Rock','Paper','Scissors']
  end 

  def win_or_lose(player1, player2)
    return "#{@player1} Wins" if player1_wins(player1, player2)
    return "Draw" if draw(@player1, @player2)
    return "#{@player2} Wins"
  end   

  def player1_wins(player1, player2)
    (player1 == "Rock" && player2 == "Scissors") || 
    (player1 == "Paper" && player2 == "Rock") || 
    (player1 == "Scissors" && player2 == "Paper")
  end 

  def draw(player1, player2)
    player1 == player2
  end 

  def switchturn
    @currentplayer = (@players.select { |player| player != currentplayer }).join
  end   

end
