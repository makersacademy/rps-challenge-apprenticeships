require './lib/player'

RSpec.describe Player do

    it 'retrieves the first player' do
        player = Player.new("Glen")
        expect(player.name).to eq 'Glen'
    end

end