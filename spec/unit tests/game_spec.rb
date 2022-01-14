require 'game'

describe Game do
  
  it "can choose randomly between rock, paper and scissors" do
    expect(['Rock', 'Paper', 'Scissors']).to include(subject.choice)
  end
  
end