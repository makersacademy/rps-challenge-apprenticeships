feature 'item selector' do
    scenario 'selecting an item and submitting it' do
        sign_in_and_play
        select 'Rock', from: 'item_choice_dropdown'
        click_button 'Submit'
        expect(page).to have_content "Lets play"
    end
end