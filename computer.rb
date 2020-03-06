class Computer 
	MOVE = ['rock', 'paper', 'scissors']
	def initialize
		@player1 = nil
		@player2 = nil
	end
	def random_move
		MOVE.sample
	end

	def the_winner_is(player1, player1_move, player2, player2_move )
		@player1 = player1
		@player2 = player2
		if player1_move == player2_move
			return "No one, it's a draw"
		elsif  player1_move == 'rock'
			case player2_move 
			when 'scissors'
				"#{player1}"
			when 'paper'
				"#{player2}"
			end
		elsif player1_move == "paper"
			case player2_move
			when 'scissors'
				"#{player2}"
			when 'rock'
				"#{player1}"
			end
		else 
			case player2_move
			when "rock"
				"#{player2}"
			when "paper"
				"#{player1}"
			end
		end
	end

	def winner_color(winner)
		case winner 
		when @player1 
		  "hotpink" 
		when @player2
			"black"
		else
			"green"
		end
	end
end