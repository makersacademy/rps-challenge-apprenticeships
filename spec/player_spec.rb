require 'player'

describe Player do 
  subject(:adam) { Player.new("Adam", "rock") }



  describe '#name' do 
    it "returns the username of the player" do 
      expect(adam.name).to eq "Adam"
    end
  end

  describe '#choice' do 
  it "returns the choice  of the player" do 
    expect(adam.choice).to eq "rock"
  end
end

end 