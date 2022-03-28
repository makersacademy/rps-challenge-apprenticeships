class Choice
  RULES = { rock: :scissors, paper: :rock, scissors: :paper }

  def resolve(player_1_choice, player_2_choice)
    return :Draw if draw(player_1_choice, player_2_choice)
    return :Win if defeats(player_1_choice, player_2_choice)
    return :Lose if !defeats(player_1_choice, player_2_choice)
  end

  def draw(player_1_choice, player_2_choice)
    player_1_choice == player_2_choice
  end

  def defeats(player_1_choice, player_2_choice)
    RULES[player_1_choice] == player_2_choice
  end
end