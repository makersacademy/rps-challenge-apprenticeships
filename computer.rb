class Computer 
	def random_move
		['rock', 'paper', 'scissors'].sample
	end

	def the_winner_is(player1, player1_move, player2, player2_move )
		if player1_move == player2_move
			return "No one, it's a draw"
		elsif  player1_move == 'rock'
			case player2_move 
			when 'scissors'
				"#{player1} won"
			when 'paper'
				"#{player2} won"
			end
		elsif player1_move == "paper"
			case player2_move
			when 'scissors'
				"#{player2} won"
			when 'rock'
				"#{player1} won"
			end
		else 
			case player2_move
			when "rock"
				"#{player2} won"
			when "paper"
				"#{player1} won"
			end
		end
	end
end