class Game
  attr_accessor :player

  def returnplayer
    return @player
  end

  def generatemove()
    moves =["rock","paper","scissors"]
    num = rand(2)
    return moves[num]
  end

  def turn(player_move) 
  @comp_move = generatemove
  @player_move = player_move
  if @comp_move == @player_move 
    return "draw"
  elsif (@player_move == "rock" && @comp_move == "scissors" )
    return "Player wins"
  elsif (@player_move == "rock" && @comp_move == "paper")
    return "Computer wins"
  elsif (@player_move == "paper"  && @comp_move == "rock")
    return "Player wins"
  elsif(@player_move == "paper" && @comp_move == "scissors")
    return "Computer wins"
    elsif(@player_move == "scissors" && @comp_move == "paper")
      return "Player wins"
    elsif(@player_move == "scissors" && @comp_move == "rock")
      return "Computer wins"
    else 
      return "error"
    end
  end

end