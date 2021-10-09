require 'player'

describe Player do
  subject(:player) { described_class.new('') }
  describe '#initialize' do
    it 'gives name to player' do
      player = Player.new("Bob")
      expect(player.name).to eq "Bob"
    end

    it "gives 'bot' to player" do
      player = Player.new("")
      expect(player.name).to eq "Bot"
    end

    it "makes 'chosen' an empty string" do
      expect(player.chosen).to eq ""
    end
  end

  describe '#choose' do
    it "changes the value for 'chosen'" do
      player.choose("rock")
      expect(player.chosen).to eq "rock"
    end
  end
end
