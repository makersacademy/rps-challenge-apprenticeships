class Game

  RULES = {
    :rock => {:rock => :draw, :paper => :paper, :scissors => :rock},
    :paper => {:rock => :paper, :paper => :draw, :scissors => :scissors},
    :scissors => {:rock => :rock, :paper => :scissors, :scissors => :draw},
  }

  def winner(player_choice, computer_choice)
    if RULES[player_choice][computer_choice] == :draw
      'It\'s a draw!'
    elsif RULES[player_choice][computer_choice] == player_choice
      'You Win!'
    elsif RULES[player_choice][computer_choice] == computer_choice
      'Computer Wins!'
    end
  end
end