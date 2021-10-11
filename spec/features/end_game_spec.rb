feature "declaring a winner" do
  scenario "a winner is declared after turns are taken" do
    visit("/")
    fill_in "name", with: "sunny"
    click_button "Submit"
    click_button "scissors"
    expect(page).to have_selector("//p"){|text|
      text.has_content?("the bot beat sunny") || text.has_content?("sunny beat the bot") || text.has_content?("it's a draw")
    }
  end
end