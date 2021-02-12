class Game

  attr_reader :player_choice, :computer_choice

  def initialize(player_choice, computer_choice)
    @player_choice = player_choice.downcase.capitalize
    @computer_choice = computer_choice.downcase.capitalize
  end

  def play
    if @player_choice == @computer_choice
      "Draw! #{@player_choice} against #{@computer_choice}!"
    elsif @player_choice == 'Rock' && @computer_choice == 'Scissors'
      "You win! #{@player_choice} beats #{@computer_choice}!"
    elsif @player_choice == 'Scissors' && @computer_choice == 'Paper'
      "You win! #{@player_choice} beats #{@computer_choice}!"
    elsif @player_choice == 'Paper' && @computer_choice == 'Rock'
      "You win! #{@player_choice} beats #{@computer_choice}!"
    else
      "You lose! #{@computer_choice} beats #{@player_choice}!"
    end
  end

end
