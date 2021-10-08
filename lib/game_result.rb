class GameResult
  attr_reader :choices, :user_choice, :computer_choice

  def initialize(user_choice, computer_choice)
    @user_choice = user_choice
    @computer_choice = computer_choice
    @choices = [user_choice, computer_choice]
  end

  def result
    draw ? "Draw" :
      case user_choice
      when "Rock"
        rock
      when "Paper"
        paper
      else
        scissors
      end
  end

  def rock
    computer_choice == "Scissors" ? "You win" : "You lose"
  end

  def paper
    computer_choice == "Rock" ? "You win" : "You lose"
  end

  def scissors
    computer_choice == "Paper" ? "You win" : "You lose"
  end

  def draw
    user_choice == computer_choice
  end

end
