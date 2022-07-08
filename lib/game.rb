class Game
  attr_reader :player_one, :ai_choice
  
  def initialize(player_one)
    @player_one = player_one
    @ai_choice = ["rock", "paper", "scissors"].sample    
  end

  def self.run_vs_ai(player_one)
    new(player_one).run_vs_ai
  end

  def run_vs_ai
    if @player_one.choice == @ai_choice
      return "It's a draw!"
    elsif @player_one.choice == "rock" && @ai_choice == "scissors"
      return "#{@player_one.name} wins!"
    elsif @player_one.choice == "paper" && @ai_choice == "rock"
      return "#{@player_one.name} wins!"
    elsif @player_one.choice == "scissors" && @ai_choice == "paper"
      return "#{@player_one.name} wins!"
    else
      return "You lose!"
    end
  end

end
