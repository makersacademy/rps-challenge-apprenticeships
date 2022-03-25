require 'game'

describe Game do
  subject(:game) { Game.new }

  describe '#cpu_choice' do
    it 'returns rock paper or scissors' do
      result = game.cpu_choice
      match = ["Rock", "Paper", "Scissors"].include? result
      expect(match).to eq true
    end
  end
end