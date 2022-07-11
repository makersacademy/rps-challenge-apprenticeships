require 'player'
RSpec.desribe Player do
    context "initially" do
        it "returns a name" do
            player = Player.new("Ronan")
            expect( player.name ).to eq "Ronan"
        end
    end
end