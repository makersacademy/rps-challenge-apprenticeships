class Game
  attr_reader :player_choice, :computer_choice

  def initialize(player_choice, computer_choice)
    @player_choice = player_choice
    @computer_choice = computer_choice
    @rules = { 'rock' => ['scissors', 'paper'],
               'paper' => ['rock', 'scissors'],
               'scissors' => ['paper', 'rock'] }
  end

  def result
    if @computer_choice == @rules[@player_choice][0]
      @result = 'You Won'
    elsif @computer_choice == @rules[@player_choice][1]
      @result = 'You Lost'
    elsif @computer_choice == @player_choice
      @result = 'You Drew'
    end
  end
end
