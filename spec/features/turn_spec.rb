require 'turn'

describe Turn do 
  subject(:turn) { described_class.new(options)} #These two lines set the conditions for laters tests
  let(:options) { {"player_name" => "Barbara", "player_shape" => "paper", "op_shape" => "paper" } }

  describe "#player_name" do 
    it 'returns player name ' do 
      expect(turn.player_name).to eq 'Barbara'
    end 
  end

  describe "#player_shape" do 
    it 'returns player shape ' do 
      expect(turn.player_shape).to eq 'paper'
    end 
  end

  describe "#op_shape" do 
    it "returns the opponent's shape" do 
      expect(turn.op_shape).to eq 'paper'
    end 
  end 
  
end 