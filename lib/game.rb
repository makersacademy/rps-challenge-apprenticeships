class Game

  def result(choice)
    calculate_result(choice)
  end

  def computer_choice
    ['rock', 'paper', 'scissors'].sample
  end

  private 

  def calculate_result(choice)
    
    case choice
    when "rock"
      return "You won!" if computer_choice == "scissors"
    when "paper"
      return "You won!" if computer_choice == "rock"
    when "scissors"
      return "You won!" if computer_choice == "paper"
    end

    return "It is a tie!" if choice == computer_choice
    return "You lost!"
  end
end