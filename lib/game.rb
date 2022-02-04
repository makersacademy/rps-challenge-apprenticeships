class Game

  attr_reader :player_weapon

  def initialize(player_weapon)
    @player_weapon = player_weapon
    @weapons = ["rock", "paper", "scissors"]
  end

  def play_game
    @computer = @weapons.sample

    if @player_weapon == @computer
      "It's a draw"
    elsif @player_weapon == "rock" && @computer == "scissors" || @player_weapon == "paper" && @computer == "rock" || @player_weapon == "scissors" && @computer == "paper"
      "You Won"
    else
      "The Computer beat you"
    end

  end

end
