class Player
 attr_reader :name, :figure
 def initialize(name)
   @name = name
   @figure = ""
 end

 def receive_figure(figure)
   @figure = figure
 end
end
