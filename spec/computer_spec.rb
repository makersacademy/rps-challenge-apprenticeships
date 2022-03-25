require './lib/computer'

RSpec.describe Computer do
    context "when a game starts" do
        it "a computer player gets a random item" do
            computer = Computer.new
            expect(computer.item).not_to eq nil
            expect(['Rock', 'Paper', 'Scissors']).to include(computer.item)
        end
    end
end
