class Computer

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def weapon
    [:Paper, :Rock, :Scissors].sample
  end

end
