class RandomSelection
  attr_reader :rps

  def rps
    @rps = ["Rock", "Paper", "Scissors"].sample
  end

end