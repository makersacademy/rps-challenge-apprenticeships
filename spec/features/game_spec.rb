feature "Game starts" do
  scenario "user starts at score 0" do
    visit '/'
    page.fill_in 'name', with: 'Amanda'
    page.click_button 'Submit'
    expect(page).to have_content("Amanda's score: 0")
  end
end

feature "Game starts" do
  scenario "computer starts at score 0" do
    visit '/'
    page.fill_in 'name', with: 'Amanda'
    page.click_button 'Submit'
    expect(page).to have_content("Computer score: 0")
  end
end