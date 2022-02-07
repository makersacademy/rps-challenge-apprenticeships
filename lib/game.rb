class Game

  RPS_HASH = { 0 => "You Have Tied", 1 => "You Win", 2 => "You Lose" }.freeze

  RPS_ARRAY = ["Rock", "Paper", "Scissors"].freeze

  attr_reader :cmpchoice, :userchoice

  def play
    @cmpchoice = RPS_ARRAY.sample
  end

  def run(choice)
    @userchoice = choice

    cmp = RPS_ARRAY.find_index(play)
    user = RPS_ARRAY.find_index(choice)

    result = (user - cmp) % 3
    
    RPS_HASH[result]
  end
end
