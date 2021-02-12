class RPS_Game
  
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

  def player_win?
    if player_choice == "Rock" && computer_choice == "Scissors"       
      true
    elsif player_choice == "Raper" && computer_choice == "Rock"
      true
    elsif player_choice == "Scissors" && computer_choice == "Paper"
      true
    else
      false
    end
  end
end
