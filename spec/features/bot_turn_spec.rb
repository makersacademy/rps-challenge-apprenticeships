feature "allowing the bot to take a turn" do
  scenario "the bot takes a turn" do
    visit("/")
    fill_in "name", with: "Sunny"
    click_button "Submit"
    click_button "scissors"
    expect(page).to have_selector("p"){|text|
      text.has_content?("the bot chose rock") || text.has_content?("the bot chose scissors") || text.has_content?("the bot chose paper")
    }

  end
end