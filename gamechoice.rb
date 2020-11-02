class GameChoice
  OPTIONS = [:Rock, :Paper, :Scissors]
  
  def moves
    OPTIONS.sample
  end
end
