require 'Computer'

describe Computer do
  describe '#choice' do
    it 'returns a random choice between rock, paper and scissors' do
      expect(['rock', 'paper', 'scissors']).to include(Computer.choice)
    end
  end
end
