require "game"
describe Game do
  let(:player) { instance_double(Player, :name => "Ana") }
  let(:option) { double(Player) }
  let(:game) { Game.new(option, player) }
  describe "#initialize" do
    it "sets the player_name" do
      expect(game.player_name).to eq player
    end

    it "returns the choice of the player" do 
      expect(game.player_choice).to equal option
    end
  end
  describe "computer_choice" do
    it "chooses at random from the three options" do
      expect_any_instance_of(Kernel).to receive(:rand).with(3).and_return(0)
      expect(game.computer_choice).to eq ("rock")

      expect_any_instance_of(Kernel).to receive(:rand).with(3).and_return(1)
      expect(game.computer_choice).to eq ("paper")

      expect_any_instance_of(Kernel).to receive(:rand).with(3).and_return(2)
      expect(game.computer_choice).to eq ("scissors")
    end
  end
  describe "round"
end
