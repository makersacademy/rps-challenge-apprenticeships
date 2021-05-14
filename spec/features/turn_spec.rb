require 'turn'

describe Turn do
  subject(:turn) { described_class.new(options) }
  let(:options) { {"player_name" => "Jay", "player_weapon" => :rock, "opponent_weapon" => :scissors} }

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
    it 'returns opponent weapon' do
      expect(turn.opponent_weapon).to eq :scissors
    end
  end

  context 'end game' do
    describe '#win' do
      it 'returns true if player_weapon is :rock and opponent_weapon is :scissors' do
        expect(turn.win?).to eq true
      end
    end
  end
end
