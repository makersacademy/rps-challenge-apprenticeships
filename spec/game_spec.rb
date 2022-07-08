require 'game'

RSpec.describe Game do
    context 'a game has a computor guess' do
        it 'returns the value of the computer\'s play' do
            player = double(:player, name: 'Miranda')
            game = Game.new(player)
            expect(game.guess).to eq 'Scissors'
        end

        
    end
end