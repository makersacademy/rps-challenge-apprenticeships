class Game
  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
  end

  def make_choices
    player_one_choice = @player_one.choose
    player_two_choice = ["rock", "paper", "scissors"].sample
    return [player_one_choice, player_two_choice]
  end

  def run
    choices = make_choices
    player_one_choice = choices[0]
    player_two_choice = choices[1]
    if player_one_choice == player_two_choice
      return "It's a draw!"
    elsif player_one_choice == "rock" && player_two_choice == "scissors"
      return "#{@player_one.name} wins!"
    elsif player_one_choice == "paper" && player_two_choice == "rock"
      return "#{@player_one.name} wins!"
    elsif player_one_choice == "scissors" && player_two_choice == "paper"
      return "#{player_one.name} wins!"
    else
      return "#{player_two.name} wins!"
    end
  end

end
