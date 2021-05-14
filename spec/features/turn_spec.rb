require 'turn'

describe Turn do
  subject(:turn) { described_class.new(options) }
  let(:options) { {"player_name" => "Jay", "player_weapon" => :rock, "opponent_weapon" => :rock} }

  describe "#player_name" do
    it 'returns player name' do
      expect(turn.player_name).to eq "Jay"
    end
  end

  describe "#player_weapon" do
    it 'returns player weapon' do
      expect(turn.player_weapon).to eq :rock
    end
  end

  describe "#opponent_weapon" do
    it 'returns popponent weapon' do
      expect(turn.player_weapon).to eq :rock
    end
  end
  
end
