require 'cpu'

RSpec.describe Cpu do
  describe 'creates a cpu' do
    it 'displays cpu name' do
      cpu = Cpu.new
      expect(cpu.name).to eq "CPU"
    end
    it 'displays Paper' do
      cpu = Cpu.new
      srand(1)
      expect(cpu.move).to eq "Paper"
    end
    it 'displays Rock' do
      cpu = Cpu.new
      srand(2)
      expect(cpu.move).to eq "Rock"
    end
    it 'displays Scissors' do
      cpu = Cpu.new
      srand(3)
      expect(cpu.move).to eq "Scissors"
    end
  end
end
