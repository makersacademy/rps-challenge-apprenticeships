require 'player'

RSpec.describe "Player" do
  it "constructs" do
    player_one = Player.new("Player 1", "Rock")
    expect(player_one.name).to eq "Player 1"
    expect(player_one.choice).to eq "Rock"
  end
end
