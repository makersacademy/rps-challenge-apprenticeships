require 'game'

describe Game do
  before(:example) do
    allow(subject).to receive(:rand) { 2 }
  end
  
  it "lets you make a move" do
    expect(subject.move("rock")).to eq("You win!")

  end

end
