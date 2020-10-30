class Player
 attr_reader :name, :figure
 def initialize(name)
   @name = name
   @figure = nil
 end

 def receive_figure(figure)
   @figure = figure
 end
end
