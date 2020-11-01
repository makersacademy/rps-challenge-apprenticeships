def play_game


erb(:game)


@player_1_choice = $player_1c


if @player_1_choice
  @player_2_choice =["rock", "paper", "scissors"].sample
end


if (@player_1_choice == "rock" && @player_2_choice == "rock" ||
  @player_1_choice == "paper" && @player_2_choice == "paper" ||
  @player_1_choice == "scissors" && @player_2_choice == "scissors")
  @result = "Draw!"
elsif (@player_1_choice == "rock" && @player_2_choice == "scissors" ||
  @player_1_choice == "paper" && @player_2_choice == "rock" ||
  @player_1_choice == "scissors" && @player_2_choice == "paper")
  @result = @player_1_name + " wins!"
  session[:player_1_points] += 1
elsif (@player_2_choice == "rock" && @player_1_choice == "scissors" ||
  @player_2_choice == "paper" && @player_1_choice == "rock" ||
  @player_2_choice == "scissors" && @player_1_choice == "paper")
  @result = @player_2_name + " wins!"
  session[:player_2_points] += 1
 end
 end
