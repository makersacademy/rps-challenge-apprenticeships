require "game"
describe Game do
  let(:computer) { double Computer.new }
  let(:player) { double Player.new("Plumbus"), choice: "Paper" }
  subject(:game) { described_class.new(player, computer) }

  it "confirms the results" do
    allow(computer).to receive(:choice).and_return("Rock")
    player_choice = player.choice("Paper")
    expect(game.winner(player_choice, computer.choice)).to eq "You won!"
  end
end
