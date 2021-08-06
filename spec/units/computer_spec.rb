require "computer"

describe Computer do
  subject(:computer) { Computer.new }

  it "returns a randomly generated move" do
    srand(3)
    expect(computer.random_choice).to eq "scissors"
  end
end