require "player"

RSpec.describe Player do
  it "returns a player's name" do
    player1 = Player.new("Delia")
    expect(player1.name).to eq "Delia"
  end
end
