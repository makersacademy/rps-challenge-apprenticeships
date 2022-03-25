feature 'player enter choice and sees they have won' do
    scenario 'player enters rock and comp chooses scissors' do
        enter_name
        fill_in :choice, with: 'rock'
        click_button 'Submit'

        expect(page).to have_content 'Brad wins'
    end

    scenario 'player enters paper and comp chooses rock' do
        enter_name
        fill_in :choice, with: 'paper'
        click_button 'Submit'

        expect(page).to have_content 'Brad wins'
    end

    scenario 'player enters scissors and comp chooses paper' do
        enter_name
        fill_in :choice, with: 'scissors'
        click_button 'Submit'

        expect(page).to have_content 'Brad wins'
    end
end

feature 'player enter choice and sees they have lost' do
    scenario 'player enters rock and comp chooses paper' do
        enter_name
        fill_in :choice, with: 'rock'
        click_button 'Submit'

        expect(page).to have_content 'Computer wins'
    end

    scenario 'player enters paper and comp chooses scissors' do
        enter_name
        fill_in :choice, with: 'paper'
        click_button 'Submit'

        expect(page).to have_content 'Computer wins'
    end

    scenario 'player enters scissors and comp chooses rock' do
        enter_name
        fill_in :choice, with: 'scissors'
        click_button 'Submit'

        expect(page).to have_content 'Computer wins'
    end
end

feature 'player enter choice and sees it is a draw' do
    scenario 'player enters rock and comp chooses rock' do
        enter_name
        fill_in :choice, with: 'rock'
        click_button 'Submit'

        expect(page).to have_content 'It was a draw'
    end

    scenario 'player enters paper and comp chooses paper' do
        enter_name
        fill_in :choice, with: 'paper'
        click_button 'Submit'

        expect(page).to have_content 'It was a draw'
    end

    scenario 'player enters scissors and comp chooses scissors' do
        enter_name
        fill_in :choice, with: 'scissors'
        click_button 'Submit'

        expect(page).to have_content 'It was a draw'
    end
end

