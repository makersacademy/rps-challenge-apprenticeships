class Game

  def initialize
    @choices = ["Rock", "Paper", "Scissors"]
  end

  def choice
    @choices
  end

  def choices
    @choices.sample
  end
end
