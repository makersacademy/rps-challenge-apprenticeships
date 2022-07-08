require './lib/player'

RSpec.describe Player do
  before(:example) do
    @player = Player.new("Ollie")
  end
  
  it "returns player name" do
    expect(@player.name).to eq "Ollie"
  end

  context "when player has chosen an action" do
    it "returns chosen action" do
      @player.choose_action("rock")
      expect(@player.action).to eq "rock"
    end
  end
end
