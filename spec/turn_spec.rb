require 'turn'

describe Turn do
  subject(:turn) { Turn.new(options) }
  let(:options) { {"name" => "Dave", "player_option" => :rock, "computer_option" => :scissors} }
  
  describe '#name' do
    it 'returns player name' do
      expect(turn.name).to eq "Dave"
    end
  end

  describe '#player_option' do
    it 'returns player option' do
      expect(turn.player_option).to eq :rock
    end
  end

  describe '#computer_option' do
    it 'returns computer option' do
      expect(turn.computer_option).to eq :scissors
    end
  end

  
  context 'end game' do
    subject(:win_turn) { turn }
    subject(:lose_turn) { Turn.new(lose_option) }
    subject(:draw_turn) { Turn.new(draw_option) }

    let(:lose_option) { {"name" => "Dave", "player_option" => :rock, "computer_option" => :paper} }
    let(:draw_option) { {"name" => "Dave", "player_option" => :rock, "computer_option" => :rock} }

    describe "#win?" do
      it 'tells if I won' do
        expect(win_turn.win?).to eq true
      end
    end

    describe "#lose?" do
      it 'tells if I lost' do
        expect(lose_turn.lose?).to eq true
      end
    end

    describe "#draw?" do
      it 'tells if I drew' do
        expect(draw_turn.draw?).to eq true
      end
    end
  end



end