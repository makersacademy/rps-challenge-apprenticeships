describe Player do
    describe '#name checker' do
        subject(:tom) { Player.new('Tom') }
        it 'checks for player name'do
        expect(tom.user_name).to eq "Tom"
        end
    end


end