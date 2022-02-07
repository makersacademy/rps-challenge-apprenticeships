feature 'Result page' do
  scenario 'visit result page' do
    visit '/'
    fill_in("player_name", with: "Jonah")
    click_button("play_button")
    fill_in("player_choice", with: "rock")
    click_button("submit_button")
    expect(page).to have_content('Result')
  end

  scenario 'take player choice' do
    visit '/'
    fill_in("player_name", with: "Jonah")
    click_button("play_button")
    fill_in("player_choice", with: "rock")
    click_button("submit_button")
    expect(page).to have_content('Your choice: rock')
  end

end
