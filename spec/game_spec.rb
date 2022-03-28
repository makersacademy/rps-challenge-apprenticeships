require 'game'

describe Game do
  subject(:game) { Game.new }

  describe 'CPU choice' do
    it 'returns rock paper or scissors' do
      result = game.cpu_choice
      match = ["Rock", "Paper", "Scissors"].include? result
      expect(match).to eq true
    end
  end

  describe 'find_winner' do
    it 'identifies the winner' do
      player_1 = double :player, choice: 'paper'
      cpu = double :game, choice: 'rock'
      result = game.find_winner(player_1, cpu)
      expect(result).to eq player_1
    end
  end
end