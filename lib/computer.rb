class Computer
  CHOICES = [:rock, :paper, :scissors]

  def com_rand_option
    CHOICES.sample
  end
end