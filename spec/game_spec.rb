require 'game'

describe Game do
  let(:game) { double :player_1 => "Jim", :player_weapon => :rock, :computer_weapon => :paper }
  let(:weapon) { double :weapon }


  describe '#player_1' do
    it 'initializes with player name' do
      expect(game.player_1).to eq "Jim"
    end
  end

  describe '#player_weapon' do
    it 'stores the players weapon choice' do
      expect(game.player_weapon).to eq :rock
    end
  end

  describe '#computer_weapon' do
    it 'stores the computer weapon choice' do
      expect(game.computer_weapon).to eq :paper
    end
  end

  describe '#result' do
    it 'displays the result of the game' do
      allow(weapon).to receive(:result).with(:rock, :paper) {:Lose}
      expect(game.result).to eq :Lose
    end
  end

end
