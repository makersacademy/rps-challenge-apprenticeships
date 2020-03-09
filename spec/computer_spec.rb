require 'computer'

describe Computer do 
	subject(:computer) { Computer.new}
	let(:computer) { double :computer, auto_weapon: move }
	let(:move) {'paper'}

	describe '#auto_weapon' do 
		it 'automatically selects a computer weapon randomly' do
			expect(computer.auto_weapon).to eq ('paper')
		end
	end
end
