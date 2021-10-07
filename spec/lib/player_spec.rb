require 'player'

describe Player do
  describe "#initialize" do
    it "is initialised with a name" do
      player = Player.new("foo")
      expect(player.name).to eq "foo"
    end
  end

  describe "#set_choice" do
    it "sets the players choice to what is passed" do
      player = Player.new('foo')
      player.set_choice('Rock')
      expect(player.choice).to eq 'Rock'
    end
  end
end