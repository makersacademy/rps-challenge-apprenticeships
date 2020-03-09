require 'computer'

describe Computer do 
	subject(:computer) { described_class.new}
	let(:computer) { double :computer, auto_weapon: weapon }
	let(:weapon) {"rock"}

	describe '#auto_weapon' do 
		it 'automatically selects a computer weapon randomly' do
			expect(Computer::WEAPONS).to include weapon
		end
	end
end
