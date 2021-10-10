require "./app"

feature "player chooses rock" do
  scenario "player loses as computer chooses paper" do
    visit "/"
    fill_in :player1_name, with: "Delia"
    click_button "Start Game"
    click_button "Go!"
    expect(page).to have_content "You lost! Computer chose paper"
  end
end
