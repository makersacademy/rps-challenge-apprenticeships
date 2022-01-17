feature "CPU v CPU game" do
  scenario "two robots duke it out until the bitter end" do
    visit '/'
    fill_in :player_one_name, with: "robot_one"
    check("player_one_CPU")
    fill_in :player_two_name, with: "robot_two"
    check("player_two_CPU")
    click_button("Ready!")
    expect(page).to have_content "Drum roll please..."
  end
end
