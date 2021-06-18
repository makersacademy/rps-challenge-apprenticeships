require 'opponent'

describe Opponent do

  let(:opponent) { Opponent.new }

  it 'randomly returns either rock, paper or scissors' do
    expect(opponent.comp_choice).to be_a_kind_of(String)
  end
end