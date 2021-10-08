feature "choosing a weapon" do
  scenario "can choose rock, paper or scissors" do
    visit "/"
    fill_in :player_1_name, with: "Ewa"
    click_button "Submit"
    #find_field "rock", disabled: false
    find_field("rock").set("rock")
    #choose("rock", allow_label_click: true)
    #fill_in :choice, with: "rock"
    #expect(page).to have_checked_field with: "rock", visible: false
    #choose("rock", allow_label_click: true)
    #find_field("rock").click
    #find("label[for=ROCK]").click
    click_button "Submit"
    expect(page).to have_content("Ewa vs. Salem!")
  end
end
