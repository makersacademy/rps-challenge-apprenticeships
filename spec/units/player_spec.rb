require 'player'

describe Player do
  subject(:player) {described_class.new('Ben')}

  it "player has a name" do
    expect(player.name).to eq('Ben')
  end

end