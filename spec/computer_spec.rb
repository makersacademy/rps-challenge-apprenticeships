require 'computer'

describe Computer do
  let(:computer) { Computer.new(:Computron) }
  
  it '#weapon returns a random weapon' do
    expected_weapons = [:Paper, :Rock, :Paper, :Scissors, :Scissors, :Paper, :Scissors, :Rock, :Rock, :Scissors]
    srand(2)
    actual_weapons = []
    10.times { actual_weapons << computer.weapon }
    expect(actual_weapons).to eq(expected_weapons) 
  end
end
