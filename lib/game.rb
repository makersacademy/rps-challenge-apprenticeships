class Game
  attr_reader :player_move

  def initialize
    @player_move = ""
    @computer_move = ""
    @options = ["Rock", "Paper", "Scissors"]
  end

  def present
    "Choose an option: Rock, Paper, Scissors"
  end

  def submit_move(move)
    @player_move << move
  end

  def random
    move = @options.sample
    @computer_move << move
  end

  def winner 
    if @computer_move == "Rock" && @player_move == "Scissors"
      return "Computer Wins"
    elsif @computer_move == "Paper" && @player_move == "Rock"
      return "Computer Wins"
    elsif @computer_move == "Scissors" && @player_move == "Paper"
      return "Computer Wins"
    elsif @player_move == "Rock" && @computer_move == "Scissors"
      return "Player wins"
    elsif @player_move == "Paper" && @computer_move == "Rock"
      return "Player wins"
    elsif @player_move == "Scissors" && @computer_move == "Paper"
      return "Player wins"
    else
      return "It's a draw"
    end
  end
end