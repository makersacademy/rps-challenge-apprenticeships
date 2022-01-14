require 'player'

describe Player do 
  subject(:adam) { Player.new("Adam",) }

  describe '#name' do 
    it "returns the username of the player" do 
      expect(adam.name).to eq "Adam"
    end
  end

  describe '#choice' do 
  it "returns the choice  of the player" do 
    adam.choice("rock")
    expect(adam.show_choice).to eq "rock"
  end
end

end 