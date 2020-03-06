class Game
  attr_reader :player, :winner
  def initialize(player)
    @player = player
  end

  def self.create(player)
    @game = Game.new(player)
  end
  
  def self.instance
    @game
  end

  def choose
    @game_choice = ["Rock","Paper","Scissors"].sample
  end

  def winner
    if @game_choice == @player.choice
      @winner = "It's a tie"
    elsif @game_choice == "Paper" && @player.choice == "Rock"     
      @winner = "#{@game_choice} beats #{@player.choice}. You lose!"
    elsif @game_choice == "Rock" && @player.choice == "Scissors"
      @winner = "#{@game_choice} beats #{@player.choice}. You lose!"
    elsif @game_choice == "Scissors" && @player.choice == "Paper"
      @winner = "#{@game_choice} beats #{@player.choice}. You lose!"
    else
      @winner = "#{@player.choice} beats #{@game_choice}. You win!"
    end
  end
end