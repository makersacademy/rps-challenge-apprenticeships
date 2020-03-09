require 'player'

describe Player do 
	subject(:jimmy) { Player.new('Jimmy')}

	describe '#player_name' do 
		it 'returns player name' do 
			expect(jimmy.player_name).to eq('Jimmy')
		end
	end

end