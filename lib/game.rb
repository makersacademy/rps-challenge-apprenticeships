class Game
  attr_accessor :player_one, :player_two, :winner

  def initialize(player1, player2)
    @player_one = player1
    @player_two = player2
    @rock = ["Scissors", "Lizard"]
    @paper = ["Rock", "Spock"]
    @scissor = ["Paper", "Lizard"]
    @lizard = ["Paper", "Spock"]
    @spock = ["Rock", "Scissors"]
  end

  def who_won(move1, move2)
    p "Move 1 is #{move1}"
    p "Move 2 is #{move2}"
    return @winner = 'Nobody' if move1 == move2
    return @winner = @player_one if move1 == "Rock" && @rock.include?(move2)
    return @winner = @player_one if move1 == "Paper" && @paper.include?(move2)
    return @winner = @player_one if move1 == "Scissors" && @scissor.include?(move2)
    return @winner = @player_one if move1 == "Lizard" && @lizard.include?(move2)
    return @winner = @player_one if move1 == "Spock" && @spock.include?(move2)

    return @winner = @player_two
  end

  def print_winner
    return 'It was a draw' if @winner == 'Nobody'

    return "#{@winner.player_name} Won!"
  end

end
