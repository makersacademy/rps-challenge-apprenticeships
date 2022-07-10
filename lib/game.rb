class Game
  def initialize(player, other_player=nil)
    @player = player
    @moves = {
      "rock" => "scissors",
      "paper" =>  "rock",
      "scissors" => "paper"
      } 
  end

  def player
    return @player
  end

  def player_name
    return @player.name
  end

  def assign_move(move)
    @player.store_player_move(move)
  end

  def get_computer_move
    return ["rock", "paper", "scissors"].sample
  end

  def find_winner

  end
  
end