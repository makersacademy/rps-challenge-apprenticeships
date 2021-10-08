feature 'Users play a round' do
  scenario 'Player selects rock and sees a result' do
    sign_up_and_start_single_player_game
    expect(page).to have_selector('#rock-option')
    expect(page).to have_selector('#paper-option', visible: true)
    expect(page).to have_selector('#scissors-option', visible: true)
    choose "rock-option"
    click_button "start-vs-pc"
    expect(page).to have_current_path("/result")
    expect(page).to have_selector('#result', text: "Win")
  end
end
