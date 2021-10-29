feature 'Player registration' do
  scenario 'Player inputs name in form' do
    visit '/'
    fill_in :player_1, with: 'Rich'
    click_button 'Start game'
    
    # save_and_open_page

    expect(page).to have_content("Let's go")
  end
end
