class Game

  # def result(player_option)
  #   @player_option = player_option
  #   @computer_option = random_option
  #
  #   if @player_option == @computer_option
  #     puts "Draw. You played #{@player_option} Computer played #{@computer_option}"
  #
  #
  #   elsif @player_option == "Rock" && @computer_option == "Scissors" || @player_option == "Scissors" && @computer_option == "Paper" || @player_option == "Paper" && @computer_option == "Rock"
  #     puts "you win. You played #{@player_option} Computer played #{@computer_option}"
  #
  #   else
  #     puts "computer wins. You played #{@player_option} Computer played #{@computer_option}"
  #   end
  # end
  #
  #
  #
  #
  # private

  def random_option
    ["Rock", "Paper", "Scissors"].sample
  end


end
