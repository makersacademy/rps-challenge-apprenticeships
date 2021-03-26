require 'computer_player'

describe ComputerPlayer do

    let(:player2) { ComputerPlayer.new }
    let(:rules) { Rules.new }

    describe '#name' do
        it 'the player has a name' do
            expect(player2.name).to eq 'Computer'
        end
    end

    describe '#moves' do
        it 'knows the available moves' do
            expect(player2.moves).to eq rules.moves
        end
    end

    describe '#make_move' do
        it 'the player can make a move' do
            move = player2.make_move
            expect(rules.moves).to include move
        end
    end
end