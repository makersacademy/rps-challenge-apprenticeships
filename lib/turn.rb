class Turn 

  attr_reader :player_name, :player_shape, :op_shape

  def initialize(options)
    @player_name = options[ "player_name"] #Why tf is this an array element?
    @player_shape = options["player_shape"]
    @op_shape = options ["op_shape"]
  end 


end 