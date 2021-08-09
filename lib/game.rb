require_relative "./player.rb"

class Game

  attr_reader :winner, :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = Player.new(player_1)
    @player_2 = Player.new(player_2)
    @winner = nil
  end

  def move(move1, move2)
    @player_1.player_move(move1)
    @player_2.player_move(move2)
    win_check
  end
  
  def win_check
    @winner = _winner
  end

  def _winner
    if @player_1.move == @player_2.move
      return "draw"
    
    elsif @player_1.move == "scissors"
      if @player_2.move  == "rock"
        return @player_2.name
      else
        return @player_1.name
      end
    
    elsif @player_1.move == "paper"
      if @player_2.move == "scissors"
        return @player_2.name
      else
        return @player_1.name
      end
    
    elsif @player_1.move == "rock"
      if @player_2.move  == "paper"
        return @player_2.name
      else
        return @player_1.name
      end
    end
  end
end

