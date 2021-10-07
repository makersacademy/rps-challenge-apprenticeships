require 'player'

describe Player do
  describe "#initialize" do
    it "is initialised with a name" do
      player = Player.new("foo")
      expect(player.name).to eq "foo"
    end
  end
end