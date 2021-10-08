require 'player'

describe Player do
    let(:player_1_name) {"Amin"}
    let(:my_player) { described_class.new(player_1_name) }

    it "Should return player name" do
        expect(my_player.name).to eq(player_1_name)
    end

end