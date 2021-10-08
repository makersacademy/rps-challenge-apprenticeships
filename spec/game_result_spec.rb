require './lib/game_result'

describe GameResult do
  let(:new_game) { described_class.new(user_choice, computer_choice) }
  let(:user_choice) { double :user_choice }
  let(:computer_choice) { double :computer_choice }

  describe '#initialize' do
    it 'returns the user choice and the computer choice' do
      expect(new_game.choices).to eq([user_choice, computer_choice])
    end
  end

  describe '#result' do
    it 'returns the result of user: rock, computer: paper' do
      expect(new_game.result).to eq "You win"
    end
  end

end
