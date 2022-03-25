require './lib/game'

RSpec.describe Game do
    it "implements game logic" do
        game1 = Game.new("Rock", "Paper")
        expect(game1.define_winner).to eq "Computer wins!!!"

        game2 = Game.new("Rock", "Rock")
        expect(game2.define_winner).to eq "It's a tie!!!"

        game3 = Game.new("Scissors", "Paper")
        expect(game3.define_winner).to eq "You win!!!"
    end
end