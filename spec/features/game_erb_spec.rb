feature "choosing a weapon" do
  scenario "can choose rock, paper or scissors" do
    visit "/"
    fill_in :player_1_name, with: "Ewa"
    click_button "Submit"
    find_field("rock").set("rock")
    click_button "Submit"
    expect(page).to have_content("Ewa vs. Computer!")
  end
end
