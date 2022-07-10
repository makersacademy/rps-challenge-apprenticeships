class Game
  def initialize(player, other_player=nil)
    @player = player
    @computer_move = ""
    @moves = {
      "Rock" => "Scissors",
      "Paper" =>  "Rock",
      "Scissors" => "Paper"
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

  def set_computer_move(move = nil)
    potential_moves = ["rock", "paper", "scissors"]
    if move == nil
      @computer_move = potential_moves.sample
    else 
      @computer_move = move
    end
  end

  def get_computer_move
    return @computer_move
  end

  def find_winner
    if @computer_move == @player.get_player_move
      return "Draw"
    elsif @moves[@player.get_player_move] == @computer_move
      return "Player wins"
    else
      return "Computer wins"
    end
  end
  
end