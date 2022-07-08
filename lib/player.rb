class Player
  def initialize(name)
    @name = name
    @action = nil
  end

  def name
    return @name
  end

  def choose_action(action)
    @action = action
  end

  def action
    return @action
  end
end
