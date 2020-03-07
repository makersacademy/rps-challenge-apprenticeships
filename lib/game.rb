class Game 
	attr_reader :player_option, :computer_option

  def initialize(player_option,computer_option)
		@player_option = player_option 
		@computer_option = computer_option
	end 	
	
	def options
		# @player_option = params[:submit]
		# @computer_option = ["Rock",'Paper','Scissors'].sample
	end 


	def win?
		if player_option == computer_option
			@tie = true
		elsif player_option == "Rock" && computer_option == 'Paper'
			@win = false 
		elsif player_option == "Rock" && computer_option == 'Scissors'
			@win = true
		elsif player_option == "Paper" && computer_option == "Rock"
			@win = true
		elsif player_option == "Paper" && computer_option == "Scissors"
			@win = false 
		elsif player_option == "Scissors" && computer_option == "Rock"
			@win = false 
		elsif player_option == "Scissors" && computer_option == "Paper"
			@win = true
		end 
	end 
end 