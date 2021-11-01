require 'user_pick'

describe User_Pick do
    subject(:first) { User_Pick.new('rock', nil, nil) }
    subject(:second) { User_Pick.new(nil, 'paper', nil) }
    subject(:third) { User_Pick.new(nil, nil, 'scissors') }
  
    describe '#options' do
      it 'returns rock' do
        expect(first.user_decided).to eq 'rock'
      end

      it 'returns paper' do
        expect(second.user_decided).to eq 'paper'
      end

      it 'returns scissor' do
        expect(third.user_decided).to eq 'scissors'
      end

    end 
end