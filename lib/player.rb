class Player
  def pc_plays
    @pc_plays = %w(rock paper scissors).sample
    # return @pc_plays
  end

  def rock 
    if $pc_plays == "scissors"
      $gameplay = "You win!"
      # return $gameplay
    elsif $pc_plays == "paper"
      $gameplay = "You lose!"
      # return $gameplay
    elsif $pc_plays == "rock"
      $gameplay = "It's a tie!"  
      # return $gameplay
    end
  end

  def scissors
    if $pc_plays == "scissors"
      $gameplay = "It's a tie!"
      # return $gameplay
    elsif $pc_plays == "paper"
      $gameplay = "You win!"
      # return $gameplay
    elsif $pc_plays == "rock"
      $gameplay = "You lose! :("  
      # return $gameplay
    end
  end

  def paper
    if $pc_plays == "scissors"
      $gameplay = "You lose!"
      return $gameplay
    elsif $pc_plays == "paper"
      $gameplay = "It's a tie!"
      return $gameplay
    elsif $pc_plays == "rock"
      $gameplay = "You win!"  
      return $gameplay
    end
  end

end
