describe Game do
    describe '#game checker' do
    subject(:rock) { Game.new('Rock') }
    
        it 'checks for user input'do
        expect(rock.user_choice).to eq "Rock"
        end

        it 'generate random choise'do
        expect(subject).to respond_to(:computer_choice)
        end

        it 'game functionality'do
        expect(subject).to respond_to(:game_on )
        end

    end
end