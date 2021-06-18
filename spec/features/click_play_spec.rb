feature "Clicking on Play" do
  scenario "click play and start game" do
    sign_in_and_play
    within("form") do
      click_button "Let's Play!"
    end
    expect(page).to have_content("Bruno vs Computer")
  end
end
