require 'player'

describe Player do
  bob = Player.new('Bob')

  describe '#name' do
    it 'returns the player name' do
      expect(bob.name).to eq 'Bob'
    end
  end

  describe '#weapon=' do
    it 'stores the chosen weapon' do
      expect(bob.weapon=('rock')).to eq 'rock'
    end
  end 

  describe '#weapon' do
    it 'returns the chosen weapon' do
      bob.weapon=('paper')
      expect(bob.weapon).to eq 'paper'
    end
  end
end