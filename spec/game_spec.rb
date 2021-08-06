require 'game'

describe Game do
  describe '#choice' do

    subject(:rock) { RockPaperScissors.new('rock') }
    it 'returns user choice' do
      expect(rock.choice.to eq('rock'))
    end

  end

end