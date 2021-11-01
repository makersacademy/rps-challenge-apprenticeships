class Computer 

  SHAPES = [:rock, :paper, :scissors].freeze

  def shape
    SHAPES.sample
  end
end
