require 'computer.rb'

describe Computer do
  it 'selects a random choice either rock, paper or scissors' do
    computer = Computer.new
     allow(computer).to receive(:computer_choice).and_return :rock
     expect(computer.computer_choice).to eq :rock
  end
end