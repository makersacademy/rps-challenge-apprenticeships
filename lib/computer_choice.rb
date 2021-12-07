class ComputerChoice
  attr_accessor :player, :computer

  choices = [rock, :paper, :scissors]

  def computer_choice
    choices.sample
  end
end
