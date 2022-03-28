feature 'Enter name' do
  scenario 'player submits name' do
    visit ('/')
    fill_in :player_name, with: 'Chalyssa'
    click_button 'Submit'
    expect(page).to have_content 'Welcome to Rock Paper Scissors, Chalyssa!'
  end
end