class Player
  attr_reader :name, :choice
  CHOICES = %w[rock paper scissors].freeze

  def initialize(name, *choice)
    @name = name
    @choice = choice
  end

  def make_choice(choice)
    raise 'null choice' if choice.nil?
    raise 'invalid choice' if invalid?(choice)
    @choice = choice
  end

  private def invalid?(choice)
    CHOICES.find_index(choice).nil?
  end

end
