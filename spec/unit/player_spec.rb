require 'player'

describe Player do

  describe 'set name' do
    it 'takes the name and returns it' do
      player = Player.new("Emily", "human")
      expect(player.name).to eq "Emily"
    end
  end
end
