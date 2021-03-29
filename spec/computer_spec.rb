require 'computer'

describe Computer do 
  subject(:computer) { described_class.new }

  describe "#computer_move" do 
    it "generates a random choice" do 
      allow(subject).to receive(:sample).and_return('rock')
    end 
  end 

end 
