class Game
  attr_reader :player_1, :player_2, :player_1_choice, :player_2_choice

  def initialize(player_1, player_2=Computer.new)
    @player_1 = player_1
    @player_2 = player_2
  end

  def set_player_1_choice(choice)
    @player_1_choice = choice.downcase
  end

  def set_player_2_choice(choice=player_2.choice)
    @player_2_choice = choice.downcase
  end

  def return_winner
    return @player_1 if player1_wins?
    return "It's a tie!" if draw?
    return @player2
  end

  private

  def player1_wins?
    (@player_1_choice == "rock" && @player_2_choice == "scissors") ||
    (@player_1_choice == "paper" && @player_2_choice == "rock") ||
    (@player_1_choice == "scissors" && @player_2_choice == "paper")
  end

  def draw?
    @player_1_choice == @player_2_choice
  end
end
