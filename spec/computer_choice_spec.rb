require 'computer_choice'

describe ComputerChoice do

  let(:computer) { ComputerChoice.new }
  
  describe "rock_paper_scissors" do
    it 'returns rock' do
      allow(computer).to receive(:rand) { 1 }
      computer.rock_paper_scissors
      expect(computer.choice).to eq('rock')
    end
    it 'returns paper' do
      allow(computer).to receive(:rand) { 2 }
      computer.rock_paper_scissors
      expect(computer.choice).to eq('paper')
    end
    it 'returns scissors' do
      allow(computer).to receive(:rand) { 3 }
      computer.rock_paper_scissors
      expect(computer.choice).to eq('scissors')
    end
  end

end
