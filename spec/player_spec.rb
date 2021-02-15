require 'player'

describe Player do
  subject(:franco) { Player.new('Franco') }

  describe '#name' do 
    it 'returns the name  of the player' do
      expect(franco.name).to eq('Franco')
    end
  end

  describe '#weapon' do
    it 'returns the weapon choice of the player' do
      franco.set_weapon('rock')
      expect(franco.weapon).to eq('rock')
    end
  end



end