require './lib/computer.rb'

describe Computer do
  it 'chooses Rock, Paper or Scissors at random' do
    computer = double(:computer, randomize: "Scissors")
    expect(computer.randomize).to eq "Scissors"
  end
end
