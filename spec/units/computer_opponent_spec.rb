require 'computer_opponent'

describe ComputerOpponent do
  it 'should pick Rock, Paper or Scissors' do
    expect(["Rock", "Paper", "Scissors"]).to include(subject.computer_choice)
  end
end