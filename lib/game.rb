class Game
  attr_reader :players

  def initialize(player)
    @players = [player]
  end

  def rps 
    rps = ["Rock", "Paper", "Scissors"]
    @cpu_choice = rps.sample
  end

  def winner?(choice)
    @choice = choice
    if @choice == @cpu_choice
      "Draw!"
    elsif player_win_conditions
      "#{@players[0].name} wins!"
    elsif cpu_win_conditions
      "CPU wins!"
    end
  end

  private

  def player_win_conditions
    user_rock_cpu_scissors || user_paper_cpu_rock || user_scissors_cpu_paper
  end

  def cpu_win_conditions
    user_scissors_cpu_rock || user_rock_cpu_paper || user_paper_cpu_scissors
  end

  def user_rock_cpu_scissors
    @choice == "Rock" && @cpu_choice == "Scissors"
  end

  def user_paper_cpu_rock
    @choice == "Paper" && @cpu_choice == "Rock"
  end

  def user_scissors_cpu_paper
    @choice == "Scissors" && @cpu_choice == "Paper"
  end

  def user_scissors_cpu_rock
    @choice == "Scissors" && @cpu_choice == "Rock"
  end

  def user_rock_cpu_paper
    @choice == "Rock" && @cpu_choice == "Paper"
  end

  def user_paper_cpu_scissors
    @choice == "Paper" && @cpu_choice == "Scissors"
  end

end
