feature "ai chooses game option" do
  scenario "allows the ai's choice to be stored and shown on screen" do
    visit "/play"
    choose id = "Rock"
    click_button ["Submit"]
    expect(page).to have_content "The AI chose: Paper"
  end
end
