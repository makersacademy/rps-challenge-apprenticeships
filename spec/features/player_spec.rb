feature 'player' do
  scenario 'player enter name' do
    sign_in_and_play
    # save_and_open_page
    expect(page).to have_content('Michael')
    
  end
end
