require 'opponent'

describe Opponent do
  it 'makes a choice between rock, paper and scissors' do
    expect(["rock", "paper", "scissors"]).to include(subject.generate_choice)
  end
end
