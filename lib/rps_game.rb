class RPSGame
  
  attr_reader :player_1_choice, :player_2_choice
 
  def initialize(player_1_choice, player_2_choice = ComputerChoice.new.choice)
    @player_1_choice = player_1_choice
    @player_2_choice = player_2_choice
  end

  def result
    if player_1_choice == player_2_choice
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
    player_1 = convert(player_1_choice)
    player_2 = convert(player_2_choice)
    ((3 + player_1 - player_2) % 3) < 2
  end
end
