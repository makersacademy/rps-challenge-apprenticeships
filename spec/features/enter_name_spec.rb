feature 'Allows user to submit their name' do
  scenario 'player can enter their name on the home page' do
    visit("/")
    fill_in :player, with: 'Heather'
    click_button 'Submit'
    expect(page).to have_content 'Heather'
  end
end