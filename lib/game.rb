class Game
  def initialize(input)
    @input = input
    @results = ["Rock", "Paper", "Scissors"]
    @computer_answer = get_computer_answer
  end 

  def computer_answer
    @computer_answer
  end

  def get_computer_answer
    @results.sample
  end

  def user_answer
    @input
  end

  def get_result
    if user_answer == computer_answer
      "Draw"
    elsif @results[@results.index(user_answer) -1] == computer_answer
      "Win"
    else
      "Lose"
    end 
  end  
end