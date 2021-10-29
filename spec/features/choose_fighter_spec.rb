feature 'Player chooses their fighter' do 
    scenario 'player picks rock' do 
        sign_in_and_play
        select "Rock", :from => "fighter"
        click_button 'GO!'

        expect(page).to have_content "Let's start!"
    end 
end 