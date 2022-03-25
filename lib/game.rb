class Game 
  def initialize(answer)
    @answer = answer
    @answers = ["Rock", "Paper", "Scissors"]
    @computers_answer = computers_answer
  end

  def player 
    @answer
  end

  def computer
    @computers_answer
  end
  
  def computers_answer
    @answers.sample
  end

  def result
    get_result(computer)
  end

  def get_result(computer)
    if @answer == computer
      return "Draw"
    elsif @answers[@answers.index(@answer) - 1] == computer
      return "You win!"
    else
      "You lose!"
    end
  end
end
