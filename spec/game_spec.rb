require 'game'

describe Game do

    subject(:game) { Game.new(player_1, player_2, rules) }
    let(:player_1) { Player.new('Rob') }
    let(:player_2) { ComputerPlayer.new }
    let(:rules) { Rules.new }

    describe '#player_1' do
        it 'retrieves the first player' do
            expect(game.player_1).to eq player_1
        end
    end

    describe '#player_2' do
        it 'retrieves the second player' do
            expect(game.player_2).to eq player_2
        end
    end

    describe '#player_1_move' do
        it 'keeps track of player 1 move' do
            move = :scissors
            expect(game.player_1_move(move)).to eq :scissors
        end
    end

    describe '#player_2_move' do
        it 'keeps track of player 2 move' do
            allow_any_instance_of(ComputerPlayer).to receive(:make_move).and_return(:scissors)
            expect(game.player_2_move).to eq :scissors
        end
    end

    describe '#result' do
        it 'returns win if player has won' do
            expect(game.result(:scissors, :paper)).to eq :win
        end

        it 'returns draw' do
            expect(game.result(:paper, :paper)).to eq :draw
        end

        it 'returns lose if player has lost' do
            expect(game.result(:rock, :paper)).to eq :lose
        end
    end
end