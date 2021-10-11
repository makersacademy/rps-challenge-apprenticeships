feature "form to submit player name" do
  scenario "can enter player name" do
    visit "/"
    fill_in :player_1_name, with: "Ewa"
    click_button "Submit"
    expect(page).to have_content("Choose your weapon, Ewa!")
  end
end
