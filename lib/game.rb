class Game

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end
  def compare
    if @player_1.weapon == @player_2.weapon
      "It's a draw"
    elsif @player_1.weapon == 'rock' and @player_2.weapon == 'scissors'
      "#{@player_1.name} wins"
    elsif @player_1.weapon == 'scissors' and @player_2.weapon == 'paper'
      "#{@player_1.name} wins"
    elsif @player_1.weapon == 'paper' and @player_2.weapon == 'rock'
      "#{@player_1.name} wins"
    else
      "#{@player_2.name} wins"
    end
  end

end