feature 'Enter names' do
  scenario 'Player can enter name' do
    visit('/')
    fill_in :player_name, with: 'Jasmine'
    click_button 'PLAY GAME!'
    # save_and_open_page
    expect(page).to have_content("Jasmine vs CPU! What do you choose?")
  end
end
