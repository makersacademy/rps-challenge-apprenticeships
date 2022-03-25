require 'computer'
require 'game'
require 'player'

RSpec.describe Computer do
  it 'returns a random weapon' do
    computer_opponent = Computer.new
    result = computer_opponent.weapon
    match = [:rock, :paper, :scissors].include? result
    expect(match).to eq true
  end
end