require 'player'

RSpec.describe Player do
    context 'create a new player with a name' do
        it 'returns the name of the player'do
            player = Player.new('Miranda')
            expect(player.name).to eq 'Miranda'
        end
    end
end