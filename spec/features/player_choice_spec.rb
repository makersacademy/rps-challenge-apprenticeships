
feature 'player enter choice and plays game' do


    scenario 'player enters rock and comp chooses rock' do

        enter_name
        fill_in :choice, with: 'rock'
        click_button 'Submit'
        expect(page).to have_content 'It was a draw!'
    end




end

feature 'player enter choice and plays game' do    
    scenario 'player enters paper and comp chooses rock' do
        # allow_any_instance_of(Game).to receive(:choice).and_return("rock")

        enter_name
        fill_in :choice, with: 'paper'
        click_button 'Submit'
        
        expect(page).to have_content 'Brad wins!'
    end
end

feature 'player enter choice and plays game' do    
    scenario 'player enters scissors and comp chooses rock' do
        # allow_any_instance_of(Game).to receive(:choice).and_return("rock")

        enter_name
        fill_in :choice, with: 'scissors'
        click_button 'Submit'
        
        expect(page).to have_content 'Computer wins!'
    end
end
