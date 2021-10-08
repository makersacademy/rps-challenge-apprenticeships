require 'player'

describe Player do
  describe '#initialize' do
    it 'should set the player name to what is passed in' do
      player = Player.new('Foo', 'Rock')
      expect(player.name).to eq('Foo')
    end

    it 'should set the player name to "You" when no name is passed' do
      player = Player.new('', 'Rock')
      expect(player.name).to eq('You')
    end

    it 'should set the player choice to what is passed in' do
      player = Player.new('Foo', 'Rock')
      expect(player.choice).to eq('Rock')
    end
  end
end
