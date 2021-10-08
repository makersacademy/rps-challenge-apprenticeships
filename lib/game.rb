class Game
  # had this in a switch statement but it
  # was a bit big and a bit daft so moving to use a hash.
  # would kind of like to move this out of this file though
  SCORES = {
    :rock => { :rock => :draw, :paper => :paper, :scissors => :rock },
    :scissors => { :rock => :rock, :paper => :scissors, :scissors => :draw },
    :paper => { :rock => :paper, :paper => :draw, :scissors => :scissors },
  }.freeze

  # re: using a hash, still have some switch-esque logic here so maybe
  # using a switch is the best idea???? reviewer pls 
  # also i dont think this is as clear as a switch statement
  # but using a switch is so verbose compared to this method
  # reviewer pls
  def winner(player_hand, computer_hand)
    if SCORES[player_hand][computer_hand] == :draw
      'Draw!'
    elsif SCORES[player_hand][computer_hand] == player_hand
      'Player wins!'
    elsif SCORES[player_hand][computer_hand] == computer_hand
      'Computer wins!'
    end
  end
end
