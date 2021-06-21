feature "Player selects move" do
  scenario "shows move selected by Player" do
    sign_in_and_play
    click_button "Let's Play!"
    find("option[value='rock']").select_option
    click_button "confirm"
    expect(page).to have_content 'You chose "rock".'
  end
end
