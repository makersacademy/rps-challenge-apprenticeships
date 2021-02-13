class Game

  def initialize(player_1_choice, player_2_choice)
    @player_1_choice = player_1_choice.downcase.capitalize
    @player_2_choice = player_2_choice.downcase.capitalize
  end

  def play
    if @player_1_choice == @player_2_choice
      "Draw! #{@player_1_choice} against #{@player_2_choice}!"
    elsif @player_1_choice == 'Rock' && @player_2_choice == 'Scissors'
      "You win! #{@player_1_choice} beats #{@player_2_choice}!"
    elsif @player_1_choice == 'Scissors' && @player_2_choice == 'Paper'
      "You win! #{@player_1_choice} beats #{@player_2_choice}!"
    elsif @player_1_choice == 'Paper' && @player_2_choice == 'Rock'
      "You win! #{@player_1_choice} beats #{@player_2_choice}!"
    else
      "You lose! #{@player_2_choice} beats #{@player_1_choice}!"
    end
  end

  def multiplayer_play(player_1, player_2)
    if @player_1_choice == @player_2_choice
      "Draw! #{player_1} & #{player_2} both chose #{@player_1_choice}!"
    elsif @player_1_choice == 'Rock' && @player_2_choice == 'Scissors'
      "#{player_1} wins! #{@player_1_choice} beats #{@player_2_choice}!"
    elsif @player_1_choice == 'Scissors' && @player_2_choice == 'Paper'
      "#{player_1} wins! #{@player_1_choice} beats #{@player_2_choice}!"
    elsif @player_1_choice == 'Paper' && @player_2_choice == 'Rock'
      "#{player_1} wins! #{@player_1_choice} beats #{@player_2_choice}!"
    else
      "#{player_2} wins! #{@player_2_choice} beats #{@player_1_choice}!"
    end
  end

end
