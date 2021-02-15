require 'computer'
RSpec.describe Computer do

  let(:computer) { Computer.new }

  describe "rock_paper_scissors_lizard_spock" do
    it 'returns rock' do
      allow(computer).to receive(:rand) { 1 }
      computer.random_character
      expect(computer.choice).to eq('rock')
    end
    it 'returns paper' do
      allow(computer).to receive(:rand) { 2 }
      computer.random_character
      expect(computer.choice).to eq('paper')
    end
    it 'returns scissors' do
      allow(computer).to receive(:rand) { 3 }
      computer.random_character
      expect(computer.choice).to eq('scissors')
    end
    # it 'returns lizard' do
    #   allow(computer).to receive(:rand) { 4 }
    #   computer.random_character
    #   expect(computer.choice).to eq('lizzard')
    # end
    # it 'returns spock' do
    #   allow(computer).to receive(:rand) { 5 }
    #   computer.random_character
    #   expect(computer.choice).to eq('spock')
    # end
  end

end