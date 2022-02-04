feature 'Enter name' do
  scenario 'submitting name' do
    visit ('/')
    fill_in :player_1_name, with: 'Player1'
    click_button 'Submit'
    expect(page).to have_content 'Player1'
  end
end