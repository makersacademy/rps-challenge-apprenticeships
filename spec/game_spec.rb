require 'game'
RSpec.describe Game do 
	subject(:r_vs_p){	described_class.new('Rock','Paper')}
	subject(:p_vs_s){	described_class.new('Paper','Scissors')}
	subject(:s_vs_r){	described_class.new('Scissors','Rock')}
	
	describe '#initialize' do 
		it 'has player option' do 
			expect(r_vs_p.player_option).to eq 'Rock'
		end 

		it 'has computer option' do
			expect(p_vs_s.computer_option).to eq 'Scissors'
		end 
	end 

	describe '#win?' do 
		it 'let paper beat rock' do
			r_vs_p.win?
			expect($win).to eq false
		end 

		it 'let scissors beat paper' do
			p_vs_s.win?
			expect($win).to eq false
		end

		it 'let rock beat scissors' do
			s_vs_r.win?
			expect($win).to eq false 
		end

		it 'tells a tie' do
			game = Game.new('Rock','Rock')
			game.win?
			expect($tie).to eq true
		end
	end 
end 