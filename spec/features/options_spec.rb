feature "Button options" do
  scenario "player sees instruction to choose" do
    visit '/start'
    expect(page).to have_content "Choose from the three options"
  end

  scenario "player sees rock button" do
    visit '/start'
    expect(page).to have_button("Rock")
  end
  scenario "player sees paper button" do
    visit '/start'
    expect(page).to have_button("Paper")
  end
  scenario "player sees scissors button" do
    visit '/start'
    expect(page).to have_button ("Scissors")
  end
end
