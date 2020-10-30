class Game
  attr_accessor :player_one, :player_two, :winner

  def initialize(player1, player2)
    @player_one = player1
    @player_two = player2

  end

  def who_won(move1, move2)
    return @winner = 'Nobody' if move1 == move2
    return @winner = @player_one if move1 == "Rock" && move2 == "Scissors"
    return @winner = @player_one if move1 == "Paper" && move2 == "Rock"
    return @winner = @player_one if move1 == "Scissors" && move2 == "Paper"

    return @winner = @player_two
  end

  def print_winner
    return 'It was a draw' if @winner == 'Nobody'

    return "#{@winner.player_name} Won!"
  end

end
