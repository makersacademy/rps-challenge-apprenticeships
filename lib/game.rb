class Game
  attr_reader :player, :winner
  def initialize(player)
    @player = player
  end

  def game_choice
    @game_choice = ["Rock","Paper","Scissors"].sample
  end

  def winner
    game_choice
    if @game_choice == @player.choice
      @winner = "It's a tie"
    elsif @game_choice == "Paper" && @player.choice == "Rock"     
      @winner = "#{@game_choice} beats #{@player.choice}. You lose!"
    elsif @game_choice == "Rock" && @player.choice == "Scissors"
      @winner = "#{@game_choice} beats #{@player.choice}. You lose!"
    elsif @game_choice == "Scissors" && @player.choice == "Paper"
      @winner = "#{@game_choice} beats #{@player.choice}. You lose!"
    else
      @winner = "#{@player.choice} beats #{@game_choice} . You win!"
    end
  end
end