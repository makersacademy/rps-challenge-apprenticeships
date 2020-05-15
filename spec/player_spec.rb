require 'player'

describe Player do
  subject(:kate) { Player.new('Kate') }

  describe '#name' do
    it 'returns the name' do
      expect(kate.name).to eq 'Kate'
    end
  end

  describe '#name' do
    it 'returns the initialized name' do
      test = Player.new('test')
      expect(test.name).to eq 'test'
    end
  end
end
  # describe '#rock' do
  #   allow_any_instance_of(Player).to receive(Game.computer_function).and_return('rock')
  #   expect(subject.rock).to eq('draw')
  # end
  #
  # describe '#rock' do
  #   it 'has some output' do
  #     player = Player.new('playername')
  #     expect(player.rock).to eq 'win'
  #   end
  # end
  #
  # describe '#paper' do
  #   it 'has some output' do
  #     player = Player.new('playername')
  #     expect(player.paper).to eq 'win'
  #   end
  # end
  #
  # describe '#scissors' do
  #   it 'has some output' do
  #     player = Player.new('playername')
  #     expect(player.scissors).to eq 'win'
  #   end
  # end
