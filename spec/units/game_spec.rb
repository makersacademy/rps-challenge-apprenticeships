require "game"

describe Game do
  let(:bob) { instance_double(Player, name: "Bob", selection: "Scissors") }
  let(:computer) { instance_double(Computer, generate_choice: "Paper") }

  subject(:game) { described_class.new(bob, computer) }

  it "returns the correct winner" do
    expect(game.result(bob.selection("Scissors"), computer.generate_choice)).to eq "The player won"
  end

end