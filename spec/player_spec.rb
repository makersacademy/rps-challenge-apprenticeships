require 'player.rb'

describe Player do
  describe '#initialize' do
    it 'returns player name' do
      player = Player.new("George")
      expect(player).to eq(player)
    end
    it 'is initialised with @name variable defined by argument' do
      player = Player.new("George")
      expect(player.name).to eq("George")
    end
  end
  describe '#choice'do
    it 'can store a string in a variable when choice is called and can return that variable' do
      player = Player.new("George")
      player.choice("Rock")
      expect(player.move).to eq("Rock")
    end
  end
end
