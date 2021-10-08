require 'player'

describe Player do
  describe '#initialize' do
    subject(:player) { described_class.new('') }
    it 'gives name to player' do
      player = Player.new("Bob")
      expect(player.name).to eq "Bob"
    end

    it "gives 'bot' to player" do
      player = Player.new("")
      expect(player.name).to eq "Bot"
    end
  end 
end
