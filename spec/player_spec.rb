require "./lib/player"

describe Player do
  let(:ewa) { Player.new("Ewa") }

  it "returns the player name" do
    expect(ewa.name).to eq "Ewa"
  end
end
