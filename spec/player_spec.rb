require 'player'

describe Player do
  it "will be created" do
    expect(Player.new("Maria")).to be_truthy
  end
  
  subject(:player1) { Player.new('He-man') }
  subject(:player2) { Player.new('Superman') }
  
  describe '#name' do
    it 'returns the name' do
      expect(player1.name).to eq 'He-man'
      expect(player2.name).to eq 'Superman'
    end
  end
end
