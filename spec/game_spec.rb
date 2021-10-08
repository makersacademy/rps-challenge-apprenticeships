require 'game'
require 'player'

describe Game do
    let(:player) {double :player}
    subject(:game) {described_class.new(player)}

    describe "#initialize" do
        it "should have a player" do
            expect(game.player).to eq player
        end
    end

    describe "#move" do
        it "will asign a move to a player" do
            allow(player).to receive(:name).and_return("stella")
            game.move("Rock")
            expect(game.player_move).to eq "Rock"
        end
        it "will asign a move to an opponent" do
            allow_any_instance_of(Game).to receive(:rand).with(0..2).and_return(0)
            game.move("Rock")
            expect(game.computer_move).to eq "Rock"
        end
        it "will asign the outcome of the match to a winner variable; Tie" do
            allow_any_instance_of(Game).to receive(:rand).with(0..2).and_return(0)
            game.move("Rock")
            expect(game.winner).to eq "Tie"
        end
        it "will asign the outcome of the match to a winner variable; lose" do
            allow_any_instance_of(Game).to receive(:rand).with(0..2).and_return(1)
            game.move("Rock")
            expect(game.winner).to eq "Computer Wins!!!"
        end
        it "will asign the outcome of the match to a winner variable; win" do
            allow(player).to receive(:name).and_return("stella")
            allow_any_instance_of(Game).to receive(:rand).with(0..2).and_return(2)
            game.move("Rock")
            expect(game.winner).to eq "stella Wins!!!"
        end
    end
end