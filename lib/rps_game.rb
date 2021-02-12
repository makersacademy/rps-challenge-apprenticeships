class RPSGame
  
  attr_reader :player_choice, :computer_choice
 
  def initialize(player_choice, computer_choice)
    @player_choice = player_choice
    @computer_choice = computer_choice
  end

  def result
    if player_choice == computer_choice
      'Draw'
    else
      player_win?
    end
  end

  private

  def convert(choice)
    ['Rock', 'Paper', 'Scissors'].index(choice)
  end

  def player_win?
    player = convert(player_choice)
    computer = convert(computer_choice)
    ((3 + player - computer) % 3) < 2
  end

end
