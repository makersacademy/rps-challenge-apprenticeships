feature 'Player chooses their fighter' do 
    scenario 'player picks rock' do 
        sign_in_and_play
        select "Rock", :from => "fighter"
        click_button 'GO!'

        expect(page).to have_content "Let's start!"
    end 

    scenario 'player picks paper' do 
        sign_in_and_play
        select "Paper", :from => "fighter"
        click_button 'GO!'

        expect(page).to have_content "Let's start!"
    end 

    scenario 'player picks scissors' do 
        sign_in_and_play
        select "Scissors", :from => "fighter"
        click_button 'GO!'

        expect(page).to have_content "Let's start!"
    end 
end 