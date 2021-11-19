
class Game

  def initialize
    @rps = ['Rock','Paper','Scissors']
  end 

  def opponent
    @rps[random_num]
  end   

  def random_num
    rand(0..2)
  end 

  def win_or_lose(player1, player2)
    return "Player 1 Wins" if player1_wins(player1, player2)
    return "Draw" if draw(player1, player2)
    return "Opponent Wins"
  end   

  def player1_wins(player1, player2)
    (player1 == "Rock" && player2 == "Scissors") || 
    (player1 == "Paper" && player2 == "Rock") || 
    (player1 == "Scissors" && player2 == "Paper")
  end 

  def draw(player1, player2)
    player1 == player2
  end 

end
