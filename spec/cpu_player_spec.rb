require 'cpu_player'

describe CpuPlayer do
  cpu = CpuPlayer.new('cpu')

  describe '#choose' do
    it 'selects a random weapon' do
      srand(3)
      cpu.choose
      expect(cpu.weapon).to eq :scissors
    end
  end
end