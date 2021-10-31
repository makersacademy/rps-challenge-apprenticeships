feature 'Play' do
  scenario 'Player can choose rock' do
    visit '/'
    fill_in :player_1_name, with:'Rebecca'
    click_button 'Submit'
    save_and_open_page
    expect(page).to have_button("Rock")
  end

  scenario 'Player can choose rock as their choice' do 
    visit '/'
    fill_in :player_1_name, with:'Rebecca'
    click_button 'Submit'
    save_and_open_page
    click_button 'Rock'
    expect(@players_choice).to eq 'Rock'
  end 
end