require 'cpu'

RSpec.describe Cpu do
  describe 'creates a cpu' do
    it 'displays a random move' do
      cpu = Cpu.new
      srand(1)
      expect(cpu.move).to eq "Rock"
    end
  end
end