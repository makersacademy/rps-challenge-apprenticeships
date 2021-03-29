feature 'allows the player to play a game' do 
    
    scenario 'displays payer name' do 
        visit '/play' do 
        expect(page).to have_content 'Alan vs. Computer'
        end
    end

    scenario 'player vs computer' do 
        visit '/play'
        fill_in :player_move, with: "rock"
        click_button 'Submit'
        expect(page).to have_content "rock"
    end
end
