require './lib/random_action'

RSpec.describe RandomAction do
  before(:example) do
    @random_action = RandomAction.new
  end
  
  it "returns Rock as an action" do
    allow(@random_action).to receive(:random_index).and_return(0)
    expect(@random_action.action).to eq "rock"
  end

  it "returns Paper as an action" do
    allow(@random_action).to receive(:random_index).and_return(1)
    expect(@random_action.action).to eq "paper"
  end

  it "returns Scissors as an action" do
    allow(@random_action).to receive(:random_index).and_return(2)
    expect(@random_action.action).to eq "scissors"
  end
end
