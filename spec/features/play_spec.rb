feature 'Play' do
  scenario 'Player can choose rock' do
    visit '/'
    fill_in :player_1_name, with:'Rebecca'
    click_button 'Submit'
    save_and_open_page
    expect(page).to have_button("Rock!")
  end

  scenario 'Player can click rock button' do 
    visit '/'
    fill_in :player_1_name, with:'Rebecca'
    click_button 'Submit'
    save_and_open_page
    expect(page). to

  end 
end