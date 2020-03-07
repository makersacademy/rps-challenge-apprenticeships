require './app'

describe Player do
  subject(:player) { Player.new('Nora') }

  it "can return it's name" do
    expect(player.name).to eq "Nora"
  end

  it "can choose an option" do
    player.choose("Rock")
    expect(player.choice).to eq "Rock"
  end
end
