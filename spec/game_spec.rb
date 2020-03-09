require 'game'

describe Game do 
	subject(:game) { described_class.new(toolkit)}
	let(:toolkit) { {"player_name" => "Jimmy", "player_weapon" =>"Paper" , "computer_weapon" => "Rock" } }

	describe '#player_name' do 
		it 'returns player name' do 
			expect(game.player_name).to eq "Jimmy"
		end
	end

	describe '#player_weapon' do 
		it 'returns player weapon' do 
			expect(game.player_weapon).to eq "Paper"
		end
	end

	describe '#computer_weapon' do 
		it 'returns computer weapon' do 
			expect(game.computer_weapon).to eq "Rock"
		end
	end
end

