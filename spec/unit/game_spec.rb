require 'game'

RSpec.describe do
  it 'returns the user input' do
    game = Game.new("Rock")
    result = game.user_answer
    expect(result).to eq "Rock"
  end

  context 'when user chooses rock and opponent chooses scissors' do
    it 'returns Win as a string' do
      game = Game.new("Rock")
      allow(game).to receive(:computer_answer).and_return("Scissors")

      expect(game.get_result).to eq "Win"
    end
  end

  context 'when user chooses rock and opponent chooses paper' do
    it 'returns Lose as a string' do
      game = Game.new("Rock")
      allow(game).to receive(:computer_answer).and_return("Paper")
      expect(game.get_result).to eq "Lose"
    end
  end

  context 'when user chooses rock and opponent chooses rock' do
    it 'returns Draw as a string' do
      game = Game.new("Rock")
      allow(game).to receive(:computer_answer).and_return("Rock")
      expect(game.get_result).to eq "Draw"
    end
  end

end
