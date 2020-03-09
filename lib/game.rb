
class Game
	attr_reader :player_name
	attr_accessor :player_weapon, :computer_weapon

	def initialize(toolkit)
		@player_name = toolkit["player_name"]
		@player_weapon = toolkit["player_weapon"]
		@computer_weapon = toolkit['computer_weapon']
		
	end
end
