feature 'test enter name' do
  scenario 'submitting name' do
    # visit('/')
    # fill_in :player_name, with: 'Raul'
    # click_button 'Submit'
    # save_and_open_page
    sign_in_and_play
    expect(page).to have_content "Raul: welcome to the RPS game"
  end
end