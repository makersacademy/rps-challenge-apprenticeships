require './lib/game_result'

describe GameResult do
  let(:user_choice) { double :user_choice }
  let(:computer_choice) { double :computer_choice }

  describe '#initialize' do
    it 'returns the user choice and the computer choice' do
      new_game = described_class.new(user_choice, computer_choice)
      expect(new_game.choices).to eq([user_choice, computer_choice])
    end
  end

end
