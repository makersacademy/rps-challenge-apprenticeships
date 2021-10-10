feature "Results" do
  scenario "shows the try again button to return to start page" do
    visit ('/names')
    fill_in :player_name, with: "Ana"
    click_button "Start game"
    click_button("Rock")
    click_button("Try again")
    expect(page).to have_content "Hello Ana, welcome to Rock/Paper/Scissors"
  end
  scenario "shows the try again button to return to start page" do
    visit ('/names')
    fill_in :player_name, with: "Ana"
    click_button "Start game"
    click_button("Paper")
    click_button("Try again")
    expect(page).to have_content "Hello Ana, welcome to Rock/Paper/Scissors"
  end
  scenario "shows the try again button to return to start page" do
    visit ('/names')
    fill_in :player_name, with: "Ana"
    click_button "Start game"
    click_button("Scissors")
    click_button("Try again")
    expect(page).to have_content "Hello Ana, welcome to Rock/Paper/Scissors"
  end
end
