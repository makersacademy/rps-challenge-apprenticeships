class GameResult
  attr_reader :choices, :user_choice, :computer_choice

  def initialize(user_choice, computer_choice)
    @user_choice = user_choice
    @computer_choice = computer_choice
    @choices = [user_choice, computer_choice]
  end

  def result
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
    case computer_choice
    when "Paper"
      "You lose"
    when "Scissors"
      "You win"
    else
      "Draw"
    end
  end

  def paper
    case computer_choice
    when "Paper"
      "Draw"
    when "Scissors"
      "You lose"
    else
      "You win"
    end
  end

  def scissors
    case computer_choice
    when "Paper"
      "You win"
    when "Scissors"
      "Draw"
    else
      "You win"
    end
  end

end