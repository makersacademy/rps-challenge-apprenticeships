class Game
  def initialize(my_answer)
    @my_answer = my_answer
    @answers = ["Rock", "Paper", "Scissors"]
    @opponent_answer = get_opponent_answer
  end

  def answer
    @my_answer
  end

  def opponent_answer
    @opponent_answer
  end

  def get_opponent_answer
    @answers.sample
  end

  def result
    get_result(@my_answer, opponent_answer)
  end

  private

  def get_result(my_answer, opponent_answer)
    if my_answer == opponent_answer
      "Draw"
    elsif @answers[@answers.index(my_answer) - 1] == opponent_answer
      "Win"
    else
      "Lose"
    end
  end
end

# game = Game.new("Rock")
# p game.opponent_answer
# binding.irb