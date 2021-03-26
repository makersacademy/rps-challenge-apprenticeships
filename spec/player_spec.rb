require 'player'

describe Player do
    let(:player1) { Player.new('Rob') }

    describe '#name' do
        it 'the player has a name' do
            expect(player1.name).to eq 'Rob'
        end
    end

    describe '#make_move' do
        it 'the player can make a move' do
            move = :scissors
            expect(player1.make_move(move)).to eq :scissors
        end
    end

end