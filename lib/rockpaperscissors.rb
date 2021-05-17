class Game
  attr_reader :winner
  attr_reader :computer_move
  attr_reader :player_choice

  def initialize(player_choice)
    @player_choice = player_choice
    @computer_move = ['Rock', 'Paper', 'Scissors'].sample
  end

  def run 
    if (@player_choice == 'Rock' && computer_move == 'Scissors') ||
      (@player_choice == 'Scissors' && computer_move == 'Paper') ||
      (@player_choice == 'Paper' && computer_move == 'Rock')
      @winner = 'player'
      
    elsif (@player_choice == 'Rock' && computer_move == 'Paper') ||
      (@player_choice == 'Scissors' && computer_move == 'Rock') ||
      (@player_choice == 'Paper' && computer_move == 'Scissors')
      @winner = 'computer'

    elsif (@player_choice == computer_move)
      @winner = 'neither'
    end
  end
end
