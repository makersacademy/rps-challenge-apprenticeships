class Game

  attr_reader :player1, :moves, :randomturn
    
  def initialize(player1, move)
    @player1 = player1
    @moves = move
    @randomturn = ""
  end

  def process_player_inputs
    p1result = { "PaperRock" => "Win", "RockScissors" => "Win", "ScissorsPaper" => "Win",
                "PaperPaper" => "Draw", "RockRock" => "Draw", "ScissorsScissors" => "Draw",
                "RockPaper" => "Lose", "ScissorsRock" => "Lose", "PaperScissors" => "Lose" }
    case 
      when p1result.fetch(@moves) == "Win"
        return "#{@player1} won the game! Player 2 played #{@randomturn}"
      when p1result.fetch(@moves) == "Draw"
        return "The game was a draw!"
      when p1result.fetch(@moves) == "Lose"
        return "Player 2 won the game! They played #{@randomturn}"
    end
  end

  def random_turn
    rps = ["Rock", "Paper", "Scissors"]
    @randomturn = rps.sample 
  end

  def concat
    moves = @moves
    randomturn = @randomturn
    return moves << randomturn
  end

end
