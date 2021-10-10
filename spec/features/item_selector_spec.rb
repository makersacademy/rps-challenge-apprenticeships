feature 'item choice selector' do
    scenario 'Should be able to select a choice' do
        sign_in_and_play
        select 'Rock', from: 'item_choice_dropdown'
        expect(page).to have_content "Rock"
    end
end