class Player

  def initialize(name)
    @name = name
  end

  attr_reader :name, :attack

  def action(attack)
    @attack = attack
  end

end