class RPS
  def initialize(choice)
		@player_choice = choice
		@pc_choice = ['rock', 'paper', 'scissors'].sample
	end

	def pc_choice
      return @pc_choice
	end

	def player_choice
    return @player_choice
	end

	def calculate
	  case
		when player_choice == "scissors" && pc_choice == "paper" 
			return "player"
		when player_choice == "scissors" && pc_choice == "rock"
			return "pc"
		when player_choice == "paper" && pc_choice == "scissors"
			return "pc"
		when player_choice == "paper" && pc_choice == "rock"
			return "player"
		when player_choice == "rock" && pc_choice == "scissors"
			return "player"
		when player_choice == "rock" && pc_choice == "paper"
			return "pc"
		else
			return "draw"
	  end
	end
end