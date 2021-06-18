class Mechanics
  attr_reader :ai_choice, :outcome

  def ai_side
    @choices = [:rock, :paper, :scissors]
    ai_choice = @choices.sample
    return ai_choice
  end

  def game_play(player, ai_choice)
    if player == :rock
      if ai_choice == :rock
        @outcome = :draw
      elsif ai_choice == :paper
        @outcome = :ai_win
      elsif ai_choice == :scissors
        @outcome = :player_win
      end
    elsif player == :paper
      if ai_choice == :rock
        @outcome = :player_win
      elsif ai_choice == :paper
        @outcome = :draw
      elsif ai_choice == :scissors
        @outcome = :ai_win
      end
    elsif player == :scissors
      if ai_choice == :rock
        @outcome = :ai_win
      elsif ai_choice == :paper
        @outcome = :player_win
      elsif ai_choice == :scissors
        @outcome = :draw
      end
    end
    return @outcome
  end
end
