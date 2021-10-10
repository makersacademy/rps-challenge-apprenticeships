require "computer"
describe Computer do
  it "initializes with an array of moves" do
    expect(subject.moves).to eq ["Rock", "Paper", "Scissors"]
  end
end
