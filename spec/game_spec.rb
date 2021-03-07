require 'game' 
RSpec.describe Game do 
    describe '#who_wins' do

        it 'player 1 wins' do
            expect(Game.who_wins("r", "s")).to eq 'Player 1 wins'
        end

        it 'its a draw' do
            expect(Game.who_wins("r", "r")).to eq "It's a draw"
        end

        it 'gives you the results' do
            expect(Game.who_wins("r", "p")).to eq 'Player 2 wins'
        end
    end
end 