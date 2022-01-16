require 'computer'

describe Computer do
  subject(:computer){Computer.new("Rock")}

  describe '#move' do
    it 'chooses a random RPS move' do
      expect(computer.move).to eq "Rock"
    end
  end

end