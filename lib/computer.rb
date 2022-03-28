class Computer
  attr_reader :weapon
  
  def weapon
    [:rock, :paper, :scissors].sample
  end
end