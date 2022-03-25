require "rock"

describe Rock do
  subject(:rock) { Rock.new }

  describe "#name" do
    it "returns the weapon name" do
      expect(rock.name).to eq("Rock")
    end
  end

  describe "#challenge" do
    it "accepts an opponent and generates a result" do
      rock.challenge("Rock")
      expect(rock.draw).to eq(true)
      rock.challenge("Paper")
      expect(rock.loser).to eq(true)
      rock.challenge("Scissors")
      expect(rock.winner).to eq(true)
    end
  end
end