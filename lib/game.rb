class Game
  attr_reader :computer_choice

  def initialize
    # @computer_choice = ['Rock', 'Paper', 'Scissors'].sample
    @computer_choice = 'Rock'
  end

  def play(user_choice)
    return "It's a draw!" if draw(user_choice)
    return "Computer wins!" if computer_wins(user_choice)
    return "You win!" if user_wins(user_choice)
  end

  private

  def draw(user_choice)
    return true if user_choice == @computer_choice
  end

  def computer_wins(user_choice)
    return true if @computer_choice == 'Rock' && user_choice == 'Scissors'
    return true if @computer_choice == 'Paper' && user_choice == 'Rock'
    return true if @computer_choice == 'Scissors' && user_choice == 'Paper'
  end

  def user_wins(user_choice)
    return true if @computer_choice == 'Paper' && user_choice == 'Scissors'
    return true if @computer_choice == 'Scissors' && user_choice == 'Rock'
    return true if @computer_choice == 'Rock' && user_choice == 'Paper'
  end
end
