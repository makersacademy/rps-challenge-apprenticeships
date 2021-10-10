require "player"
describe Player do
  subject(:new_player) { described_class.new("Plumbus") }
  it "initializes with a name" do
    expect(new_player.name).to eq "Plumbus"
  end
  it "returns what move the player picks" do
    new_player.choice("Rock")
    expect(new_player.selected_choice).to eq "Rock"
  end
end
