require 'player'

describe Player do

  describe '#name' do
    it 'returns the name' do
      player = Player.new('Homer')
      expect(player.name).to eq 'Homer'
    end
  end
  
  describe '#choose' do
    it 'returns the choice of the player' do
      player = Player.new('Homer')
      choice = { rock: 'rock' }
      player.choose(choice)
      expect(player.choice).to eq "rock"
    end
  end
end
