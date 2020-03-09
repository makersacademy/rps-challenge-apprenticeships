class Game
attr_accessor :weapons
attr_accessor :computer_weapon
attr_accessor :player_weapon

  #This method sets out the logic for choosing computer's weapon
  def initialize(weapons=["rock", "paper", "scissors"])
    @weapons = weapons
  end

  def choose_weapon
    @computer_weapon = weapons.sample
  end

  #This method sets out the logic for selecting the winner
  def choose_winner
    if @computer_weapon == @player_weapon
      puts "It's a draw!"
      p @computer_weapon
      p @player_weapon
    elsif @player_weapon == "rock" && @computer_weapon == "paper"
      puts "Paper covers rock. You lose"



    elsif @player_weapon == "rock" && @computer_weapon == "scissors"
      puts "Rock break scissors. You win!"
    elsif @player_weapon == "paper" && @computer_weapon == "rock"
      puts "Paper covers rock. You win!"
    elsif @player_weapon == "paper" && @computer_weapon == "scissors"
      puts "Scissors cut paper. You lose"
    elsif @player_weapon == "scissors" && @computer_weapon == "paper"
      puts "Scissors cut paper. You win!"
    elsif @player_weapon == "scissors" && @computer_weapon == "rock"
      puts "Rock break scissors. You lose"


    end
  end
end
