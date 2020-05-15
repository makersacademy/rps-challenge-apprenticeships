require './lib/player_choice'

RSpec.describe PlayerChoice do

    it 'retrieves the first player' do
        choice = PlayerChoice.new("Rock")
        expect(choice.choice).to eq 'Rock'
    end

end