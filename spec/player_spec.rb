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

  describe "#decision" do
    it { is_expected.to respond_to(:decision).with(1).argument }
    
    it "returns choosen #decision" do
      player1.decision("rock")
      expect(player1.option).to eq "rock"
    end
  end
  
  describe "#rand" do
    it { is_expected.to respond_to(:rand)}
  end
  
end
