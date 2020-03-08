require 'player'

describe Player do 
	subject(:jimmy) { Player.new('Jimmy')}

	describe '#name' do 
		it 'returns player name' do 
			expect(jimmy.name).to eq('Jimmy')
		end
	end
end