require './lib/game_result'

describe GameResult do
  let(:new_game) { described_class.new(user_choice, computer_choice) }
  let(:user_choice) { double :user_choice }
  let(:computer_choice) { double :computer_choice }
  let(:winning_game) { described_class.new("Rock", "Scissors") }
  let(:losing_game) { described_class.new("Paper", "Scissors") }
  let(:drawn_game) { described_class.new("Paper", "Paper") }

  describe '#initialize' do
    it 'returns the user choice and the computer choice' do
      expect(new_game.choices).to eq([user_choice, computer_choice])
    end
  end

  describe '#result' do
    it 'returns the result of a winning game' do
      expect(winning_game.result).to eq "You win"
    end

    it 'returns the result of a losing game' do
      expect(losing_game.result).to eq "You lose"
    end

    it 'returns the result of a drawn game' do
      expect(drawn_game.result).to eq "Draw"
    end
  end

end
