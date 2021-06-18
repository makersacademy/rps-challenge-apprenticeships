require 'computer-choice'

describe ComputerChoice do

  let(:opponent) { ComputerChoice.new }

  it 'randomly returns either rock, paper or scissors' do
    expect(opponent.comp_choice).to be_a_kind_of(String)
  end
end