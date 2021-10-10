require "player"

RSpec.describe Player do
  it "returns a player's name" do
    player = Player.new("Delia")
    expect(player.name).to eq "Delia"
  end
end
