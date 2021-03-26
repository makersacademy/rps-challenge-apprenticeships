require 'game'

describe Game do

    subject(:game) { Game.new(player_1, player_2) }
    let(:player_1) { Player.new('Rob') }
    let(:player_2) { ComputerPlayer.new }

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
end