require './lib/player'

RSpec.describe Player do
    context "when a player enters their name" do
        it "constructs a player" do
            player = Player.new("Laura")
            expect(player.name).to eq "Laura"
        end
    end
end
