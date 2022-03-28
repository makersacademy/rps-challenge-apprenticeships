class CpuPlayer < Player
  def choose
    @weapon = [:rock, :paper, :scissors].sample
  end
end