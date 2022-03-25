require 'computer'
require 'game'
require 'player'

RSpec.describe Computer do
  it 'returns a random weapon' do
    computer_opponent = Computer.new
    expect(computer_opponent.weapon).to eq 