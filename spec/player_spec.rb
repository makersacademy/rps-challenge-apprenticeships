require 'player'
RSpec.describe Player do 
	subject(:player) { described_class.new('Pikachu') }
	describe '#initialize' do 
		it 'returns player name' do
			expect(subject.name).to eq 'Pikachu'
		end 
  end 
end 