class Game
	attr_reader :player_option, :computer_option

	def initialize(player_option,computer_option)
		# have to assign the two arguments as both instance and global variable 
		#	global variables for access for other classes
		# instance variables for retrieving attributes and mainly for tests
		# this does not seem like a best pratice, need to be refactored 
		$player_option = player_option
		@player_option = player_option
		$computer_option = computer_option
		@computer_option = computer_option
	end

	def win?
		$tie = false
		if $player_option == $computer_option
			$tie = true
		elsif $player_option == "Rock" && $computer_option == 'Paper'
			$win = false
		elsif $player_option == "Rock" && $computer_option == 'Scissors'
			$win = true
		elsif $player_option == "Paper" && $computer_option == "Rock"
			$win = true
		elsif $player_option == "Paper" && $computer_option == "Scissors"
			$win = false
		elsif $player_option == "Scissors" && $computer_option == "Rock"
			$win = false
		else $player_option == "Scissors" && $computer_option == "Paper"
			$win = true
		end
	end
end