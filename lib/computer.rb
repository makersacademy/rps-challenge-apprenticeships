class Computer

  def initialize
    @move = ['Rock', 'Paper', 'Scissors']
  end

  def move
    @move.rand
  end 
end
