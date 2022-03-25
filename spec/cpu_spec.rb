require 'cpu'

RSpec.describe Cpu do
  xdescribe 'creates a cpu' do
    it 'displays cpu name' do
      cpu = Cpu.new
      expect(cpu.name).to eq "CPU"
    end
    it 'displays Rock' do
      cpu = Cpu.new
      srand(1)
      expect(cpu.move).to eq "Rock"
    end
  end
end
