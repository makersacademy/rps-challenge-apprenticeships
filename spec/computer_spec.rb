require "./lib/computer"

describe Computer do
  let(:salem) { Computer.new }

  describe "#initialize" do
    it "returns the player name" do
      expect(salem.name).to eq "Salem"
    end
  end
end
