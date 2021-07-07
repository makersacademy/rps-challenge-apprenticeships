
feature 'test play page' do
  scenario 'show player and options' do
    #sign_in_and_play
    visit('/')
    fill_in :player, with: 'Kalindi'
    click_button 'Submit'
    expect(page).to have_content 'Your move, Kalindi'
  end
end
