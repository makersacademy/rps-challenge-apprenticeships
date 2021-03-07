require 'Game'

RSpec.describe Game do
  subject(:eunice) { Game.new('eunice')}

  describe '#register' do
    it 'should allow you to register' do
      expect(subject.register).to eq 'eunice'
    end
  end

end
