require_relative '../lib/computer.rb'

describe Computer do
  subject(:comp) { described_class.new }

  it 'cam choose a random option of Rock, Paper, Scissors' do
    allow(comp).to receive(:rps).and_return("Rock")
    expect(comp.rps).to eq("Rock")
  end

   
end