require "computer"
describe Computer do
  it "initializes with an array of moves" do
    expect(subject.moves).to eq ["Rock", "Paper", "Scissors"]
  end
  it "returns a choice" do
    allow(subject).to receive(:choice).and_return("Rock")
    expect(subject.choice).to eq "Rock"
  end
end
