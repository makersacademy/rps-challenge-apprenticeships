feature 'Enter name' do
  scenario 'submitting name' do
    # sign_in_and_play
    visit('/')
    fill_in :player_name, with: 'Penny'
    click_button 'Submit'
    expect(page).to have_content 'Hello Penny'
  end

  scenario 'ready to play' do
  visit('/')
  fill_in :player_name, with: 'Penny'
  click_button 'Submit'
  expect(page).to have_content "Play"
  end
end