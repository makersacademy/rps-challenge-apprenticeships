class Game
  attr_reader :player
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
    @game_choice = ["Rock", "Paper", "Scissors"].sample
  end

  def winner
    options = ["Rock", "Scissors", "Paper"]
    if options[options.index(@player.choice) - 1] == options[options.index(@game_choice)]
      @winner = "#{@game_choice} beats #{@player.choice}. You lose!"
    elsif @game_choice == @player.choice
      @winner = "It's a tie"
    else
      @winner = "#{@player.choice} beats #{@game_choice}. You win!"
    end
  end
end
