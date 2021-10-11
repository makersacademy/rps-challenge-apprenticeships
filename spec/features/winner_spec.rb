require "./app"

feature "computer choice" do
  scenario "page displays computer choice" do
    allow_any_instance_of(Weapon).to receive(:generate).and_return "rock"
    visit("/")
    fill_in :player1_name, with: "Delia"
    click_button "Start Game"
    click_button "Go!"
    expect(page).to have_content "Computer chose: rock"
  end

  scenario "page displays player1 choice" do
    visit("/")
    fill_in :player1_name, with: "Delia"
    click_button "Start Game"
    page.choose("1")
    click_button "Go!"
    expect(page).to have_content "You chose: rock"
  end
end
