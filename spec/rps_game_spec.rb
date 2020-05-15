require './lib/rps_game.rb'

describe Game do
  it 'creates a new instance of itself' do
    expect(subject).to be_instance_of Game
  end

  describe '#player_1' do
    it 'shows us the first player' do
      expect(subject.player_1).to eq "Player 1"
    end
  end

  describe '#opponent' do
    it 'shows who is the opponent' do
      expect(subject.opponent).to eq 'Computer'
    end
  end

  describe '#fight' do
    it 'allows the two players to fight' do
      # expect(subject.fight).to respond_to :fight
    end
  end



end
