require 'player'

describe Player do
  before(:each) { @player = Player.new('foo') }

  describe "#initialize" do
    it "is initialised with a name" do
      expect(@player.name).to eq "foo"
    end
  end

  describe "#move" do
    it "sets the players choice to what is passed" do
      @player.move('Rock')
      expect(@player.choice).to eq 'Rock'
    end
  end
end
