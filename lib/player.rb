class Player
  attr_reader :name
  attr_accessor :rock, :paper, :scissors
  def initialize(name)
    @name = name
    @rock
    @paper
    @scissors
  end

  def choice
    if !@rock.nil? then return "Rock" end
    if !@paper.nil? then return "Paper" end
    if !@scissors.nil? then return "Scissors" end
  end
end
