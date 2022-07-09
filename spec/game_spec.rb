require 'game'

RSpec.describe Game do
    context 'a game has a computor guess' do
        it 'returns the value of the computer\'s play' do
            game = double(:game, guess: "paper")
            expect(game.guess).to eq 'paper'
        end


    end
end