require 'game'

describe Game do
 subject(:turn) { described_class.new(options) }
 let(:options) { {"player_name" => "Anastasia", "player_weapon" => :rock, "computer_weapon" => :rock} }

  describe '#player_name' do
    it 'returns the player name' do
      expect(turn.player_name).to eq 'Anastasia'
    end
  end

  describe '#player_weapon' do
    it 'returns the player weapon' do
      expect(turn.player_weapon).to eq :rock
    end
  end

  describe '#computer_weapon' do
    it 'returns the computer weapon' do
      expect(turn.computer_weapon).to eq :rock
    end
  end

  context 'end game' do
    describe '#win?' do
      it 'returns true if player_weapon is :rock and turn.computer_weapon is :scissors' do
        expect(turn.win?).to eq true
      end
    end
  end
end