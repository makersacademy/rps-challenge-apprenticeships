feature 'enter player name' do
    scenario 'player 1 enters name' do
        enter_name   

        expect(page).to have_content 'Brad'
    end
end