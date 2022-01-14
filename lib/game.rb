class Game 

  def calculate_winner(player1, cpu)
    
    if player1.show_choice == cpu.show_choice
      @result = "It's a draw"
      
    elsif player1.show_choice == "rock" && cpu.show_choice == "paper"
      @result = "#{player1.name} loses"
      
    elsif player1.show_choice == "paper" && cpu.show_choice== "scissors"
      @result = "#{player1.name} loses"
      
    elsif player1.show_choice == "scissors" && cpu.show_choice== "rock"
      @result = "#{player1.name} loses"

    else 
      @result = "#{player1.name} wins"
    end
    
  end

end 