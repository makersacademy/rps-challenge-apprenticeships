require "player"

describe Player do
    subject(:player) {described_class.new("stella")}
    describe "#initialize" do
        it "will be innitalized with a name" do
            expect(player.name).to eq "stella"
        end
    end
end