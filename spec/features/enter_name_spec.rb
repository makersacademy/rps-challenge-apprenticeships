feature "Enter the name" do
  scenario "the user enters their name before beginning the game" do
    visit '/'
    page.fill_in 'name', with: 'Amanda'
    page.click_button 'Submit'
    expect(page).to have_content(:game)
  end
end

feature "Enter the name" do
  scenario "the user enters their name and see's it in the next page" do
    visit '/'
    page.fill_in 'name', with: 'Amanda'
    page.click_button 'Submit'
    expect(page).to have_content('Amanda')
  end
end
