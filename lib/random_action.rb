class RandomAction
  def initialize
    @actions = ["rock", "paper", "scissors"]
  end

  def action
    return @actions[random_index]
  end

  private

  def random_index
    return [0, 1, 2].sample
  end
end
