class Game
  attr_reader :player, :winner
  def initialize(player)
    @player = player
  end

  def game_choice
    @game_choice = ["Rock","Paper","Scissor"].sample
  end

  def winner
    game_choice
    if @game_choice == "Paper" && @player.choice == "Rock"
      @winner = "#{@game_choice} beats #{@player.choice}. You lose!"
    end
  end
end