feature 'Register the player name' do
  scenario 'submitting a player name' do
    sign_in_and_play
    # save_and_open_page
    expect(page).to have_content 'Olivia'
  end
end